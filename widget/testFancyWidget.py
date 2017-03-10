# Copyright (C) 2017 Art and Logic.
import widget

w = widget.APyFancyWidget(b"Pat")
isFredValid = w.IsCorrect("Fred")
print("isFredValid:", isFredValid)
isPatValid = w.IsCorrect("Pat")
print("isPatValid:", isPatValid)
