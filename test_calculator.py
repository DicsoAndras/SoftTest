import pytest
from calculator import add, subtract, multiply, divide

def test_add():
    assert add(1, 2) == 3
    assert add(5, 5) == 10
    assert add(1, -1) == 0
    assert add(-1, -1) == -2
    assert add(0, 0) == 0

def test_subtract():
    assert subtract(2, 1) == 1
    assert subtract(10, 6) == 4
    assert subtract(100, 33) == 67
    assert subtract(5000, 4000) == 1000
    assert subtract(-20, -20) == 0

def test_multiply():
    assert multiply(1, 1) == 1
    assert multiply(5, 0) == 0
    assert multiply(5, 5) == 25
    assert multiply(10, 10) == 100
    assert multiply(50, 50) == 2500