# Copyright (C) 2017 Art and Logic.
#
# The Cython based code that generates a native class wrapper for use with
# native python classes

# Allow the use of std::string type
from libcpp.string cimport string

# The actual wrapper for the C++ based class AFancyWidget
cdef extern from "fancywidget.hpp":
   cdef cppclass AFancyWidget:
      AFancyWidget(string name) except +

      string GetName() except +

      bint IsCorrect(string value) except +