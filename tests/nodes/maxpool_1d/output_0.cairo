use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP16x16Tensor, FP16x16TensorAdd};
use orion::numbers::{FixedTrait, FP16x16};

fn output_0() -> Tensor<FP16x16> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(1);
    shape.append(3);
    shape.append(16);

    let mut data = ArrayTrait::new();
    data.append(FP16x16 { mag: 61884, sign: true });
    data.append(FP16x16 { mag: 70834, sign: false });
    data.append(FP16x16 { mag: 15414, sign: true });
    data.append(FP16x16 { mag: 63283, sign: true });
    data.append(FP16x16 { mag: 80777, sign: false });
    data.append(FP16x16 { mag: 62331, sign: false });
    data.append(FP16x16 { mag: 36245, sign: false });
    data.append(FP16x16 { mag: 43793, sign: false });
    data.append(FP16x16 { mag: 86411, sign: false });
    data.append(FP16x16 { mag: 146017, sign: false });
    data.append(FP16x16 { mag: 7647, sign: true });
    data.append(FP16x16 { mag: 104406, sign: false });
    data.append(FP16x16 { mag: 86222, sign: false });
    data.append(FP16x16 { mag: 22960, sign: true });
    data.append(FP16x16 { mag: 31465, sign: false });
    data.append(FP16x16 { mag: 61922, sign: false });
    data.append(FP16x16 { mag: 4475, sign: false });
    data.append(FP16x16 { mag: 56673, sign: true });
    data.append(FP16x16 { mag: 66213, sign: false });
    data.append(FP16x16 { mag: 704, sign: true });
    data.append(FP16x16 { mag: 12139, sign: true });
    data.append(FP16x16 { mag: 18185, sign: false });
    data.append(FP16x16 { mag: 37230, sign: false });
    data.append(FP16x16 { mag: 16248, sign: false });
    data.append(FP16x16 { mag: 109129, sign: false });
    data.append(FP16x16 { mag: 72554, sign: false });
    data.append(FP16x16 { mag: 89600, sign: false });
    data.append(FP16x16 { mag: 9863, sign: false });
    data.append(FP16x16 { mag: 85035, sign: false });
    data.append(FP16x16 { mag: 176235, sign: false });
    data.append(FP16x16 { mag: 8069, sign: true });
    data.append(FP16x16 { mag: 26682, sign: true });
    data.append(FP16x16 { mag: 1956, sign: true });
    data.append(FP16x16 { mag: 96803, sign: false });
    data.append(FP16x16 { mag: 59893, sign: false });
    data.append(FP16x16 { mag: 157662, sign: false });
    data.append(FP16x16 { mag: 152484, sign: false });
    data.append(FP16x16 { mag: 27460, sign: false });
    data.append(FP16x16 { mag: 26375, sign: false });
    data.append(FP16x16 { mag: 21889, sign: false });
    data.append(FP16x16 { mag: 42479, sign: false });
    data.append(FP16x16 { mag: 158107, sign: false });
    data.append(FP16x16 { mag: 34271, sign: false });
    data.append(FP16x16 { mag: 29105, sign: true });
    data.append(FP16x16 { mag: 21337, sign: false });
    data.append(FP16x16 { mag: 24034, sign: true });
    data.append(FP16x16 { mag: 700, sign: false });
    data.append(FP16x16 { mag: 109591, sign: false });
    TensorTrait::new(shape.span(), data.span())
}
