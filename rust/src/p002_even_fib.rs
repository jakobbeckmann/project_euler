//! Even Fibonacci numbers
//!
//! Problem 2
//!
//! Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the
//! first 10 terms will be:
//!
//! 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
//!
//! By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the
//! even-valued terms.

use utils;

fn run(num: u64) -> u64 {
    utils::FibRange::with_max(num).filter(|i| i % 2 == 0).sum()
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_p002() {
        assert_eq!(run(100), 44);
        assert_eq!(run(4_000_000), 4_613_732);
    }
}
