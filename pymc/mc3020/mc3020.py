import bridgepoint
import io
import optparse
import os
import pkg_resources
import rsl
import shutil
import sys
import xtuml

from mc3020 import ARCDIR, SCHEMADIR

def run_build(working_directory='.', gen_workspace='code_generation', output_directory='src', model_inputs=[]):

    # setup build
    print('Setting up build environment...')
    os.environ['ROX_MC_ARC_DIR'] = ARCDIR                   # set archetype directory
    working_directory = os.path.abspath(working_directory)  # resolve working directory path
    gen_workspace = os.path.abspath(gen_workspace)          # resolve gen workspace path
    output_directory = os.path.abspath(output_directory)    # resolve output path
    os.makedirs(output_directory, exist_ok=True)

    # prepare gen workspace
    print('Preparing generation workspace...')
    if os.path.exists(gen_workspace):
        shutil.rmtree(gen_workspace)
    os.makedirs(gen_workspace, exist_ok=True)
    os.chdir(gen_workspace)

    # copy marking files
    print('Installing user marks...')
    for markfile in filter(lambda path: os.path.splitext(path)[1] == '.mark', os.listdir(os.path.join(SCHEMADIR, 'colors'))):
        shutil.copyfile(os.path.join(SCHEMADIR, 'colors', markfile), os.path.join(gen_workspace, markfile))
    shutil.copyfile(os.path.join(SCHEMADIR, 'colors', 'sys_functions.arc'), os.path.join(gen_workspace, 'sys_functions.arc'))
    for user_markfile in filter(lambda path: os.path.splitext(path)[1] == '.mark', os.listdir(working_directory)):
        shutil.copyfile(os.path.join(working_directory, user_markfile), os.path.join(gen_workspace, user_markfile))

    # execute pre-build
    print('Pre-building...')
    model = bridgepoint.load_metamodel(model_inputs)
    bridgepoint.prebuild_model(model)
    model_file = io.StringIO()
    xtuml.persist_instances2(model, model_file)

    # execute code generation
    print('Generating code...')
    id_generator = xtuml.IntegerGenerator()
    model = xtuml.MetaModel(id_generator)
    loader = xtuml.ModelLoader()
    loader.filename_input(os.path.join(SCHEMADIR, 'sql', 'xtumlmc_schema.sql'))
    loader.input(model_file.getvalue())
    loader.populate(model)
    rt = rsl.Runtime(model, 'change', True, None)
    ast = rsl.parse_file(os.path.join(ARCDIR, 'sys.arc'))
    rsl.evaluate(rt, ast, ['.'])

    # copy generated sources to output directory
    custom_implementations = []
    with open(os.path.join(working_directory, 'custom.txt')) as f:
        custom_implementations = list(map(lambda s: s.strip(), f.readlines()))
    for src_file in filter(lambda path: os.path.splitext(path)[1] in ['.h', '.c'], os.listdir(os.path.join(gen_workspace, '_ch'))):
        if src_file in custom_implementations:
            shutil.copyfile(os.path.join(gen_workspace, '_ch', src_file), os.path.join(output_directory, src_file + '.orig'))
        else:
            shutil.copyfile(os.path.join(gen_workspace, '_ch', src_file), os.path.join(output_directory, src_file))


def main():
    # parse command line options
    parser = optparse.OptionParser(usage="python -m mc3020 [options] <model_path> [another_model_path..]", formatter=optparse.TitledHelpFormatter())
    parser.add_option('-d', '--pwd', dest='working_directory', help='code generation base folder', default='.')
    parser.add_option('-g', '--gendir', dest='gen_workspace', help='code generation workspace folder', default=None)
    parser.add_option('-o', '--outdir', dest='output_directory', help='source output folder', default='.')
    opts, args = parser.parse_args()
    gen_workspace = opts.gen_workspace if opts.gen_workspace is not None else os.path.join(opts.working_directory, 'code_generation')
    if len(args) == 0:
        parser.print_help()
        sys.exit(1)

    # launch build
    run_build(working_directory=opts.working_directory, gen_workspace=gen_workspace, output_directory=opts.output_directory, model_inputs=args)

