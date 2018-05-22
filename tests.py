#!/usr/bin/env python3 -OO

import unittest

class TestSolutions(unittest.TestCase):
    def test_001_multiples(self):
        import py_solutions.p001_multiples
        self.assertEqual(23, py_solutions.p001_multiples.run(10))

    def test_002_even_fib(self):
        import py_solutions.p002_even_fib
        self.assertEqual(10, py_solutions.p002_even_fib.run(10))
        self.assertEqual(44, py_solutions.p002_even_fib.run(60))


if __name__ == "__main__":
    unittest.main()
