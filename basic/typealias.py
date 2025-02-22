"""
TODO:

Create a new type called Vector, which is a list of float.
"""

from typing import List

type Vector = List[float]

def foo(v: Vector) -> None:
    ...

foo([1.1, 2])
foo(1)  # expect-type-error
foo(["1"])  # expect-type-error
