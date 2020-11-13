#!/usr/bin/env python

try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

from os import path
this_directory = path.abspath(path.dirname(__file__))
with open(path.join(this_directory, 'README.md'), encoding='utf-8') as f:
    long_description = f.read()

setup(name='pymc3020',
      version='1.0.3',
      description='Python executor for MC-3020',
      long_description=long_description,
      long_description_content_type='text/markdown',
      author='Levi Starrett',
      author_email='levi@roxsoftware.com',
      url='https://github.com/xtuml/mc',
      license='Apache 2.0',
      download_url='https://github.com/xtuml/mc/releases/download/1.0.3/pymc3020-1.0.3.tar.gz',
      keywords='xtuml bridgepoint',
      packages=['mc3020'],
      install_requires=['pyxtuml', 'pyrsl'],
      include_package_data=True,
      zip_safe=False)
