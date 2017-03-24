# distutils: language=c++
# distutils: sources=fancyWidget.cpp
# !!!...
#  The above two comments need to be the first two comments in this file
# ...!!!
#
# Copyright (C) 2017 Art and Logic.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#



# The Cython code that generates a native python class that wraps the C++
# AFancyWidget class.
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
