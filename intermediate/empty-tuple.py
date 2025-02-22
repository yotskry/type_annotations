"""
TODO:

foo should accept a empty tuple argument.
"""

from typing import Tuple

def foo(x: Tuple[()]) -> None:
    pass

## End of your code ##
foo(())
foo((1,))  # expect-type-error
