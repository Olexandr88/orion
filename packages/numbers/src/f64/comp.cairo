use super::{F64, NaN, FixedTrait, F64Impl};

fn max(a: F64, b: F64) -> F64 {
    if a.d == NaN || b.d == NaN {
        return F64 { d: NaN };
    }

    if (a >= b) {
        return a;
    } else {
        return b;
    }
}

fn min(a: F64, b: F64) -> F64 {
    if a.d == NaN || b.d == NaN {
        return F64 { d: NaN };
    }

    if (a <= b) {
        return a;
    } else {
        return b;
    }
}

// Tests
// --------------------------------------------------------------------------------------------------------------

#[cfg(test)]
mod tests {
    use super::{FixedTrait, F64Impl, max, min};

    #[test]
    fn test_max() {
        let a = FixedTrait::new_unscaled(1);
        let b = FixedTrait::new_unscaled(0);
        let c = FixedTrait::new_unscaled(-1);

        assert(max(a, a) == a, 'max(a, a)');
        assert(max(a, b) == a, 'max(a, b)');
        assert(max(a, c) == a, 'max(a, c)');

        assert(max(b, a) == a, 'max(b, a)');
        assert(max(b, b) == b, 'max(b, b)');
        assert(max(b, c) == b, 'max(b, c)');

        assert(max(c, a) == a, 'max(c, a)');
        assert(max(c, b) == b, 'max(c, b)');
        assert(max(c, c) == c, 'max(c, c)');
    }

    #[test]
    fn test_min() {
        let a = FixedTrait::new_unscaled(1);
        let b = FixedTrait::new_unscaled(0);
        let c = FixedTrait::new_unscaled(-1);

        assert(min(a, a) == a, 'min(a, a)');
        assert(min(a, b) == b, 'min(a, b)');
        assert(min(a, c) == c, 'min(a, c)');

        assert(min(b, a) == b, 'min(b, a)');
        assert(min(b, b) == b, 'min(b, b)');
        assert(min(b, c) == c, 'min(b, c)');

        assert(min(c, a) == c, 'min(c, a)');
        assert(min(c, b) == c, 'min(c, b)');
        assert(min(c, c) == c, 'min(c, c)');
    }
}
