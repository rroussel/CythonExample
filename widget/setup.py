# Copyright (C) 2017 Art and Logic.

from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

extensions = [
Extension("widget", ["widget.pyx"],
language="c++",
extra_compile_args=["-std=c++11"],
),
]
setup(
name = "widgets",
version = "0.1",
ext_modules = cythonize(extensions),
)