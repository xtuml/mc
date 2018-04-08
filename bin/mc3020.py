#!/usr/bin/env python
# encoding: utf-8
# Copyright (C) 2017 John Törnblom
'''
MC3020 is a model compiler for xtUML that emits ANCI C and SystemC code.
User guide is available at http://roxsoftware.com/ug
'''

import optparse
import logging
import sys
import os

# use ply, pyxtuml and pyrsl bundled in gen_erate.pyz
sys.path.insert(0, os.path.dirname(__file__) + '/gen_erate.pyz') 

import xtuml
import rsl


def fix_incorrect_phrases(m):
    '''
    Fix incorrect phrases caused by a faulty BridgePoint lexer.
    '''
    for inst in m.select_many('ACT_LNK'):
        inst.Rel_Phrase = inst.Rel_Phrase.replace("'", "")
        
    for key_letter in ['ACT_REL', 'ACT_UNR', 'ACT_RU', 'ACT_URU']:
        for inst in m.select_many(key_letter):
            inst.relationship_phrase = inst.relationship_phrase.replace("'", "")
            
    for key_letter in ['R_PART', 'R_FORM', 'R_AONE', 'R_AOTH', 'R_CONE', 'R_COTH']:
        for inst in m.select_many(key_letter):
            inst.Txt_Phrs = inst.Txt_Phrs.replace("'", "")

        
def main():
    '''
    Parse command line options and launch mc3020.
    '''
    usage_example = 'Example: %s -o %s %s' % (sys.argv[0], 'src',
                                              'gen/code_generation/MicrowaveOven.sql')
    
    parser = optparse.OptionParser(usage="%prog [options] model.sql",
                                   formatter=optparse.TitledHelpFormatter(),
                                   epilog=usage_example)

    parser.set_description(__doc__.strip())
    
    parser.add_option("-m", "--markings", dest="markings", metavar="PATH",
                      help="use markings from PATH", action="store", default=None)

    parser.add_option("-e", "--emit", dest='emit', metavar="WHEN",
                      choices=['never', 'change', 'always'], action="store",
                      help="choose when to emit (never, change, always)", default='change')
    
    parser.add_option("-f", "--force", dest='force', action="store_true",
                      help="make read-only emit files writable", default=False)

    parser.add_option("-o", "--output", dest='output', metavar="PATH", action="store",
                      help="emit source code to PATH", default='.')
    
    parser.add_option("-d", "--diff", dest='diff', metavar="PATH", action="store",
                      help="save a diff of all emits to PATH", default=None)

    parser.add_option("-l", "--lang", dest='lang', metavar="LANG",
                      choices=['c', 'sysc'], action="store",
                      help="choose language to generate in (c, sysc)", default='c')
    
    (opts, args) = parser.parse_args()
    if len(args) == 0:
        parser.print_help()
        sys.exit(1)

    logging.basicConfig(level=logging.INFO)

    dirname = os.path.dirname(__file__) + '/..'
    dirname = os.path.abspath(dirname)

    sqlfiles = list(args)
    sqlfiles.append(dirname + '/schema/sql/xtumlmc_schema.sql')

    metamodel = xtuml.load_metamodel(sqlfiles)
    fix_incorrect_phrases(metamodel)

    langdir = dirname + '/arc/' + opts.lang
    includes = [dirname + '/arc',
                langdir,
                dirname + '/schema/colors']
    
    if opts.markings:
        includes.insert(0, opts.markings)
        
    if opts.diff:
        with open(opts.diff, 'w') as f:
            f.write(' '.join(sys.argv))
            f.write('\n')

    if not os.path.exists(opts.output):
        os.mkdir(opts.output)
    
    rsl.runtime.put_env_var('.', 'ROX_MC_ARC_DIR')
    rt = rsl.Runtime(metamodel, opts.emit, opts.force, opts.diff)
    ast = rsl.parse_file(langdir + '/sys.arc')

    os.chdir(opts.output)
    rsl.evaluate(rt, ast, includes)


if __name__ == '__main__':
    main()

