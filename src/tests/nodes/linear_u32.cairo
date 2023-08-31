mod input_0; 
mod input_1; 
mod input_2; 
mod output_0; 

use orion::operators::nn::core::NNTrait;
use orion::numbers::fixed_point::core::FixedTrait;
use orion::operators::nn::implementations::nn_u32_fp16x16::NN_u32_fp16x16;
use orion::operators::tensor::implementations::tensor_u32_fp16x16::u32TensorPartialEq;
use orion::utils::assert_eq;

#[test]
#[available_gas(2000000000)]
fn test_linear_u32() {
    let input_0 = input_0::input_0();
    let input_1 = input_1::input_1();
    let input_2 = input_2::input_2();
    let z = output_0::output_0();

    let y = NNTrait::linear(input_0, input_1, input_2);

    assert_eq(y, z);
}