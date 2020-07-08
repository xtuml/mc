#!/usr/bin/env python
# encoding: utf-8
import logging
import unittest
import sys

try:
    from setuptools import setup
    from setuptools import Command
    from setuptools.command.build_py import build_py
except ImportError:
    from distutils.core import setup
    from distutils.core  import Command
    from distutils.command.build_py import build_py


logging.basicConfig(level=logging.DEBUG)


class BuildCommand(build_py):
    
    def run(self):
        import xtuml
        from bridgepoint import oal

        l = xtuml.ModelLoader()
        l.input('', name='<empty string>')
        l.build_metamodel()
        oal.parse('')
        build_py.run(self)


class TestCommand(Command):
    description = "Execute unit tests"
    user_options = [('name=', None, 'Limit testing to a single test case or test method')]

    def initialize_options(self):
        self.name = None
    
    def finalize_options(self):
        if self.name and not self.name.startswith('tests.'):
            self.name = 'tests.' + self.name

    def run(self):
        if self.name:
            suite = unittest.TestLoader().loadTestsFromName(self.name)
        else:
            suite = unittest.TestLoader().discover('tests')
        
        runner = unittest.TextTestRunner(verbosity=2, buffer=True)
        exit_code = not runner.run(suite).wasSuccessful()
        sys.exit(exit_code)


setup(name='pymc',
      version='1.0.0',
      description='Python executor for MC-3020',
      author='Levi Starrett',
      author_email='levi@roxsoftware.com',
      url='https://github.com/xtuml/mc',
      license='Apache 2.0',
      keywords='xtuml bridgepoint',
      packages=['mc3020'],
      requires=['pyxtuml', 'pyrsl'],
      include_package_data=True,
      zip_safe=False,
      cmdclass={'build_py': BuildCommand,
                'test': TestCommand}
      )

