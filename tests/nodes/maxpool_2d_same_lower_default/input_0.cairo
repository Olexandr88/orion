use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP16x16Tensor, FP16x16TensorAdd};
use orion::numbers::{FixedTrait, FP16x16};

fn input_0() -> Tensor<FP16x16> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(1);
    shape.append(3);
    shape.append(8);
    shape.append(8);

    let mut data = ArrayTrait::new();
    data.append(FP16x16 { mag: 138703, sign: true });
    data.append(FP16x16 { mag: 17593, sign: false });
    data.append(FP16x16 { mag: 37316, sign: true });
    data.append(FP16x16 { mag: 18101, sign: true });
    data.append(FP16x16 { mag: 100611, sign: true });
    data.append(FP16x16 { mag: 659, sign: false });
    data.append(FP16x16 { mag: 100276, sign: false });
    data.append(FP16x16 { mag: 38390, sign: true });
    data.append(FP16x16 { mag: 33210, sign: false });
    data.append(FP16x16 { mag: 61895, sign: true });
    data.append(FP16x16 { mag: 7680, sign: true });
    data.append(FP16x16 { mag: 13113, sign: false });
    data.append(FP16x16 { mag: 72129, sign: true });
    data.append(FP16x16 { mag: 79353, sign: false });
    data.append(FP16x16 { mag: 4830, sign: false });
    data.append(FP16x16 { mag: 37310, sign: true });
    data.append(FP16x16 { mag: 59023, sign: false });
    data.append(FP16x16 { mag: 59144, sign: false });
    data.append(FP16x16 { mag: 20810, sign: true });
    data.append(FP16x16 { mag: 191104, sign: false });
    data.append(FP16x16 { mag: 41831, sign: false });
    data.append(FP16x16 { mag: 85357, sign: true });
    data.append(FP16x16 { mag: 68515, sign: false });
    data.append(FP16x16 { mag: 28484, sign: false });
    data.append(FP16x16 { mag: 45074, sign: false });
    data.append(FP16x16 { mag: 44778, sign: true });
    data.append(FP16x16 { mag: 36984, sign: false });
    data.append(FP16x16 { mag: 66850, sign: false });
    data.append(FP16x16 { mag: 112661, sign: false });
    data.append(FP16x16 { mag: 23651, sign: true });
    data.append(FP16x16 { mag: 79272, sign: false });
    data.append(FP16x16 { mag: 154926, sign: true });
    data.append(FP16x16 { mag: 10887, sign: true });
    data.append(FP16x16 { mag: 6880, sign: true });
    data.append(FP16x16 { mag: 59713, sign: true });
    data.append(FP16x16 { mag: 36990, sign: true });
    data.append(FP16x16 { mag: 47134, sign: true });
    data.append(FP16x16 { mag: 103368, sign: false });
    data.append(FP16x16 { mag: 94963, sign: true });
    data.append(FP16x16 { mag: 9558, sign: true });
    data.append(FP16x16 { mag: 141332, sign: true });
    data.append(FP16x16 { mag: 32922, sign: true });
    data.append(FP16x16 { mag: 14154, sign: true });
    data.append(FP16x16 { mag: 138698, sign: false });
    data.append(FP16x16 { mag: 26096, sign: false });
    data.append(FP16x16 { mag: 91856, sign: false });
    data.append(FP16x16 { mag: 31118, sign: true });
    data.append(FP16x16 { mag: 508, sign: false });
    data.append(FP16x16 { mag: 35988, sign: false });
    data.append(FP16x16 { mag: 9381, sign: true });
    data.append(FP16x16 { mag: 10816, sign: true });
    data.append(FP16x16 { mag: 28140, sign: false });
    data.append(FP16x16 { mag: 10298, sign: true });
    data.append(FP16x16 { mag: 68132, sign: false });
    data.append(FP16x16 { mag: 80322, sign: false });
    data.append(FP16x16 { mag: 88352, sign: false });
    data.append(FP16x16 { mag: 100098, sign: false });
    data.append(FP16x16 { mag: 53069, sign: false });
    data.append(FP16x16 { mag: 155072, sign: false });
    data.append(FP16x16 { mag: 22128, sign: true });
    data.append(FP16x16 { mag: 172627, sign: true });
    data.append(FP16x16 { mag: 20198, sign: false });
    data.append(FP16x16 { mag: 3764, sign: true });
    data.append(FP16x16 { mag: 34532, sign: false });
    data.append(FP16x16 { mag: 81111, sign: true });
    data.append(FP16x16 { mag: 38033, sign: true });
    data.append(FP16x16 { mag: 25795, sign: true });
    data.append(FP16x16 { mag: 53914, sign: true });
    data.append(FP16x16 { mag: 58934, sign: true });
    data.append(FP16x16 { mag: 74080, sign: true });
    data.append(FP16x16 { mag: 53723, sign: true });
    data.append(FP16x16 { mag: 10926, sign: false });
    data.append(FP16x16 { mag: 84619, sign: false });
    data.append(FP16x16 { mag: 188693, sign: false });
    data.append(FP16x16 { mag: 37774, sign: false });
    data.append(FP16x16 { mag: 33855, sign: false });
    data.append(FP16x16 { mag: 86756, sign: false });
    data.append(FP16x16 { mag: 47341, sign: false });
    data.append(FP16x16 { mag: 16804, sign: false });
    data.append(FP16x16 { mag: 19410, sign: true });
    data.append(FP16x16 { mag: 4857, sign: true });
    data.append(FP16x16 { mag: 144907, sign: false });
    data.append(FP16x16 { mag: 19674, sign: false });
    data.append(FP16x16 { mag: 7336, sign: true });
    data.append(FP16x16 { mag: 83249, sign: true });
    data.append(FP16x16 { mag: 13101, sign: true });
    data.append(FP16x16 { mag: 13796, sign: false });
    data.append(FP16x16 { mag: 23641, sign: true });
    data.append(FP16x16 { mag: 61764, sign: true });
    data.append(FP16x16 { mag: 28933, sign: true });
    data.append(FP16x16 { mag: 79450, sign: false });
    data.append(FP16x16 { mag: 43751, sign: false });
    data.append(FP16x16 { mag: 99475, sign: false });
    data.append(FP16x16 { mag: 99879, sign: true });
    data.append(FP16x16 { mag: 16143, sign: false });
    data.append(FP16x16 { mag: 19630, sign: true });
    data.append(FP16x16 { mag: 119844, sign: false });
    data.append(FP16x16 { mag: 4729, sign: false });
    data.append(FP16x16 { mag: 40092, sign: false });
    data.append(FP16x16 { mag: 52497, sign: false });
    data.append(FP16x16 { mag: 28145, sign: true });
    data.append(FP16x16 { mag: 31321, sign: false });
    data.append(FP16x16 { mag: 47437, sign: false });
    data.append(FP16x16 { mag: 59558, sign: false });
    data.append(FP16x16 { mag: 154091, sign: false });
    data.append(FP16x16 { mag: 60540, sign: false });
    data.append(FP16x16 { mag: 46907, sign: true });
    data.append(FP16x16 { mag: 84671, sign: false });
    data.append(FP16x16 { mag: 56013, sign: false });
    data.append(FP16x16 { mag: 58264, sign: true });
    data.append(FP16x16 { mag: 20243, sign: false });
    data.append(FP16x16 { mag: 147219, sign: true });
    data.append(FP16x16 { mag: 36880, sign: false });
    data.append(FP16x16 { mag: 80459, sign: true });
    data.append(FP16x16 { mag: 52556, sign: false });
    data.append(FP16x16 { mag: 176520, sign: true });
    data.append(FP16x16 { mag: 89561, sign: true });
    data.append(FP16x16 { mag: 45221, sign: false });
    data.append(FP16x16 { mag: 37020, sign: false });
    data.append(FP16x16 { mag: 88532, sign: true });
    data.append(FP16x16 { mag: 99592, sign: false });
    data.append(FP16x16 { mag: 6673, sign: true });
    data.append(FP16x16 { mag: 20497, sign: true });
    data.append(FP16x16 { mag: 48790, sign: false });
    data.append(FP16x16 { mag: 63481, sign: true });
    data.append(FP16x16 { mag: 93939, sign: true });
    data.append(FP16x16 { mag: 10523, sign: true });
    data.append(FP16x16 { mag: 90627, sign: false });
    data.append(FP16x16 { mag: 15429, sign: false });
    data.append(FP16x16 { mag: 9882, sign: false });
    data.append(FP16x16 { mag: 88221, sign: false });
    data.append(FP16x16 { mag: 103220, sign: false });
    data.append(FP16x16 { mag: 18470, sign: false });
    data.append(FP16x16 { mag: 116464, sign: true });
    data.append(FP16x16 { mag: 45172, sign: true });
    data.append(FP16x16 { mag: 28246, sign: false });
    data.append(FP16x16 { mag: 62933, sign: true });
    data.append(FP16x16 { mag: 80332, sign: false });
    data.append(FP16x16 { mag: 21278, sign: true });
    data.append(FP16x16 { mag: 56583, sign: true });
    data.append(FP16x16 { mag: 34590, sign: true });
    data.append(FP16x16 { mag: 48885, sign: true });
    data.append(FP16x16 { mag: 38070, sign: true });
    data.append(FP16x16 { mag: 51209, sign: true });
    data.append(FP16x16 { mag: 44554, sign: false });
    data.append(FP16x16 { mag: 75396, sign: true });
    data.append(FP16x16 { mag: 162232, sign: true });
    data.append(FP16x16 { mag: 85388, sign: true });
    data.append(FP16x16 { mag: 77567, sign: true });
    data.append(FP16x16 { mag: 46076, sign: false });
    data.append(FP16x16 { mag: 1258, sign: false });
    data.append(FP16x16 { mag: 75938, sign: true });
    data.append(FP16x16 { mag: 19808, sign: true });
    data.append(FP16x16 { mag: 3602, sign: true });
    data.append(FP16x16 { mag: 26122, sign: true });
    data.append(FP16x16 { mag: 48685, sign: true });
    data.append(FP16x16 { mag: 67709, sign: true });
    data.append(FP16x16 { mag: 15860, sign: false });
    data.append(FP16x16 { mag: 59382, sign: false });
    data.append(FP16x16 { mag: 39707, sign: true });
    data.append(FP16x16 { mag: 3979, sign: true });
    data.append(FP16x16 { mag: 14954, sign: false });
    data.append(FP16x16 { mag: 94433, sign: true });
    data.append(FP16x16 { mag: 24674, sign: false });
    data.append(FP16x16 { mag: 32149, sign: true });
    data.append(FP16x16 { mag: 96812, sign: false });
    data.append(FP16x16 { mag: 32335, sign: true });
    data.append(FP16x16 { mag: 26743, sign: false });
    data.append(FP16x16 { mag: 64580, sign: false });
    data.append(FP16x16 { mag: 17788, sign: true });
    data.append(FP16x16 { mag: 25898, sign: false });
    data.append(FP16x16 { mag: 36605, sign: false });
    data.append(FP16x16 { mag: 78960, sign: true });
    data.append(FP16x16 { mag: 117485, sign: true });
    data.append(FP16x16 { mag: 23270, sign: true });
    data.append(FP16x16 { mag: 1539, sign: false });
    data.append(FP16x16 { mag: 46000, sign: false });
    data.append(FP16x16 { mag: 110506, sign: true });
    data.append(FP16x16 { mag: 37096, sign: false });
    data.append(FP16x16 { mag: 24200, sign: true });
    data.append(FP16x16 { mag: 51581, sign: false });
    data.append(FP16x16 { mag: 17036, sign: false });
    data.append(FP16x16 { mag: 21576, sign: true });
    data.append(FP16x16 { mag: 61805, sign: false });
    data.append(FP16x16 { mag: 30579, sign: false });
    data.append(FP16x16 { mag: 23251, sign: true });
    data.append(FP16x16 { mag: 37590, sign: true });
    data.append(FP16x16 { mag: 30907, sign: false });
    data.append(FP16x16 { mag: 10479, sign: false });
    data.append(FP16x16 { mag: 15777, sign: true });
    data.append(FP16x16 { mag: 12917, sign: false });
    data.append(FP16x16 { mag: 109290, sign: true });
    TensorTrait::new(shape.span(), data.span())
}
