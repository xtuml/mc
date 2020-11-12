import bridgepoint
import io
import optparse
import os
import pkg_resources
import rsl
import shutil
import sys
import xtuml

from . import ARCDIR, SCHEMADIR

def run_build(working_directory='.', gen_workspace='code_generation', output_directory='src', variant='c', model_inputs=[]):

    # setup build
    print('MC-3020: Setting up build environment...')
    os.environ['ROX_MC_ARC_DIR'] = os.path.join(gen_workspace, 'arc')  # set archetype directory
    working_directory = os.path.abspath(working_directory)             # resolve working directory path
    gen_workspace = os.path.abspath(gen_workspace)                     # resolve gen workspace path
    output_directory = os.path.abspath(output_directory)               # resolve output path
    if not os.path.exists(output_directory):
        os.makedirs(output_directory)

    # prepare gen workspace
    print('MC-3020: Preparing generation workspace...')
    if os.path.exists(gen_workspace):
        shutil.rmtree(gen_workspace)
    if not os.path.exists(gen_workspace):
        os.makedirs(gen_workspace)

    # copy archetypes
    print('MC-3020: Installing model compiler archetypes...')
    if not os.path.exists(os.path.join(gen_workspace, 'arc')):
        os.makedirs(os.path.join(gen_workspace, 'arc'))
    for arcfile in filter(lambda path: not os.path.isdir(os.path.join(ARCDIR, path)), os.listdir(ARCDIR)):
        shutil.copyfile(os.path.join(ARCDIR, arcfile), os.path.join(gen_workspace, 'arc', arcfile))
    if os.path.exists(os.path.join(ARCDIR, variant)) and os.path.isdir(os.path.join(ARCDIR, variant)):
        for arcfile in filter(lambda path: not os.path.isdir(os.path.join(ARCDIR, variant, path)), os.listdir(os.path.join(ARCDIR, variant))):
            shutil.copyfile(os.path.join(ARCDIR, variant, arcfile), os.path.join(gen_workspace, 'arc', arcfile))

    # copy marking files
    print('MC-3020: Installing user marks...')
    for markfile in filter(lambda path: os.path.splitext(path)[1] == '.mark', os.listdir(os.path.join(SCHEMADIR, 'colors'))):
        shutil.copyfile(os.path.join(SCHEMADIR, 'colors', markfile), os.path.join(gen_workspace, markfile))
    shutil.copyfile(os.path.join(SCHEMADIR, 'colors', 'sys_functions.arc'), os.path.join(gen_workspace, 'sys_functions.arc'))
    for user_markfile in filter(lambda path: os.path.splitext(path)[1] == '.mark', os.listdir(working_directory)):
        shutil.copyfile(os.path.join(working_directory, user_markfile), os.path.join(gen_workspace, user_markfile))

    # execute pre-build
    print('MC-3020: Pre-building...')
    model = bridgepoint.load_metamodel(model_inputs)
    bridgepoint.prebuild_model(model)
    xtuml.persist_instances(model, os.path.join(gen_workspace, 'a.sql'))

    # execute code generation
    print('MC-3020: Generating code...')
    os.chdir(gen_workspace)
    id_generator = xtuml.IntegerGenerator()
    model = xtuml.MetaModel(id_generator)
    loader = xtuml.ModelLoader()
    loader.filename_input(os.path.join(SCHEMADIR, 'sql', 'xtumlmc_schema.sql'))
    loader.filename_input(os.path.join(gen_workspace, 'a.sql'))
    loader.populate(model)
    rt = rsl.Runtime(model, 'change', True, None)
    ast = rsl.parse_file(os.path.join(gen_workspace, 'arc', 'sys.arc'))
    rsl.evaluate(rt, ast, ['.'])

    # copy generated sources to output directory
    print('MC-3020: Installing generated sources...')
    custom_implementations = []
    with open(os.path.join(working_directory, 'custom.txt')) as f:
        custom_implementations = list(map(lambda s: s.strip(), f.readlines()))
    for src_file in filter(lambda path: os.path.splitext(path)[1] in ['.h', '.c'], os.listdir(os.path.join(gen_workspace, '_ch'))):
        if src_file in custom_implementations:
            shutil.copyfile(os.path.join(gen_workspace, '_ch', src_file), os.path.join(output_directory, src_file + '.orig'))
        else:
            shutil.copyfile(os.path.join(gen_workspace, '_ch', src_file), os.path.join(output_directory, src_file))

    print('MC-3020: Done.')


def main():
    # parse command line options
    parser = optparse.OptionParser(usage="python -m mc3020 [options] <model_path> [another_model_path..]", formatter=optparse.TitledHelpFormatter())
    parser.add_option('-d', '--pwd', dest='working_directory', help='code generation base folder', default='.')
    parser.add_option('-g', '--gendir', dest='gen_workspace', help='code generation workspace folder', default=None)
    parser.add_option('-o', '--outdir', dest='output_directory', help='source output folder', default='.')
    parser.add_option('-t', '--variant', dest='variant', help='code generation dialect', default='c')
    opts, args = parser.parse_args()
    gen_workspace = opts.gen_workspace if opts.gen_workspace is not None else os.path.join(opts.working_directory, 'code_generation')
    if len(args) == 0:
        parser.print_help()
        sys.exit(1)

    # launch build
    run_build(working_directory=opts.working_directory,
              gen_workspace=gen_workspace,
              output_directory=opts.output_directory,
              variant=opts.variant,
              model_inputs=args)

