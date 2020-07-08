#!/usr/bin/env python

try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

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
      zip_safe=False)
