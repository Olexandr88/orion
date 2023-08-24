use array::ArrayTrait;
use option::OptionTrait;
use array::SpanTrait;
use orion::numbers::fixed_point::core::{FixedTrait, FixedType};
use orion::operators::tensor::implementations::impl_tensor_fp::Tensor_fp;
use orion::numbers::fixed_point::implementations::fp16x16::core::FP16x16Impl;
use orion::operators::tensor::core::{Tensor, TensorTrait};


/// Cf: TensorTrait::ceil docstring
fn ceil(mut z: Tensor<FixedType>) -> Tensor<FixedType> {
    let mut data_result = ArrayTrait::<FixedType>::new();

    loop {
        match z.data.pop_front() {
            Option::Some(item) => {
                data_result.append((*item).ceil());
            },
            Option::None(_) => {
                break;
            }
        };
    };

    return TensorTrait::new(z.shape, data_result.span(), z.extra);
}
