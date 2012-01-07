#! /usr/bin/python

import sys

from distutils.core import setup

if sys.platform == 'win32':
  dest_data_dir = 'authz-tools'
else:
  dest_data_dir = 'share/authz-tools'

setup (
        name='authz-tools',
        version = '0.6',
        description='a set of tools for working with authz files',
        long_description='''\
This package contains a module for "manipulating" AuthZ files and a set of
tools that allow extracting, replacing and deleting information about a
particular repository''',
        author='Mikhail Sobolev',
        author_email = 'mss@mawhrin.net',
        py_modules = [ 'AuthZFile' ],
        scripts = [ 'authz-tool', 'authz-admin' ],
        data_files = [ (dest_data_dir, ['authz-admin.tmpl']) ],
        url = 'http://only.mawhrin.net/~mss/thingies/authz/',
        license = 'GPL v2',
        platforms = 'win32,posix'
)
