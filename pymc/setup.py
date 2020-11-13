#!/usr/bin/env python

try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

setup(name='pymc3020',
      version='1.0.0',
      description='Python executor for MC-3020',
      author='Levi Starrett',
      author_email='levi@roxsoftware.com',
      url='https://github.com/xtuml/mc',
      license='Apache 2.0',
      download_url='https://github.com/leviathan747/mc/releases/download/1.0.0/1.0.0.tar.gz',
      keywords='xtuml bridgepoint',
      packages=['mc3020'],
      install_requires=['pyxtuml', 'pyrsl'],
      include_package_data=True,
      zip_safe=False)
