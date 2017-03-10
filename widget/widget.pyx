# distutils: language=c++
# distutils: sources=fancyWidget.cpp
# !!!...
#  The above two comments need to be the first two comments in this file
# ...!!!
#
# Copyright (C) 2017 Art and Logic.
#
# The Cython code that generates a native python class that wraps the C++
# AGraphicsHelper class.
#

from widget cimport AFancyWidget
from libcpp.string cimport string

cdef class APyFancyWidget:
   # This is the python class that proxies the calls into the C++ class.
   # This class can be used by native Python code as any other Python class
   # would.

   # Use composition for the C++ based class instance
   cdef AFancyWidget* helper

   def __cinit__(self, name):
      # Create an instance of the AFancyWidget C++ class on the heap
      self.helper = new AFancyWidget(name)

   def __dealloc__(self):
      # Destroy the heap allocated C++ class
      del self.helper

   def GetName(self):
      return self.helper.GetName()
      
   def IsCorrect(self, string value):
      return self.helper.IsCorrect(value)
