use orion::operators::tensor::core::{Tensor, TensorTrait, unravel_index};
use orion::operators::tensor::helpers::{
    broadcast_shape, broadcast_index_mapping, len_from_shape, check_compatibility
};

/// Cf: TensorTrait::equal docstring
fn equal<
    T,
    impl BoolTensor: TensorTrait<bool>,
    impl TPartialEq: PartialEq<T>,
    impl TCopy: Copy<T>,
    impl TDrop: Drop<T>
>(
    y: @Tensor<T>, z: @Tensor<T>
) -> Tensor<bool> {
    let broadcasted_shape = broadcast_shape(*y.shape, *z.shape);
    let mut result: Array<bool> = array![];

    let num_elements = len_from_shape(broadcasted_shape);

    let mut n: usize = 0;
    while n != num_elements {
        let indices_broadcasted = unravel_index(n, broadcasted_shape);

        let indices_self = broadcast_index_mapping(*y.shape, indices_broadcasted);
        let indices_other = broadcast_index_mapping(*z.shape, indices_broadcasted);

        if *(*y.data)[indices_self] == *(*z.data)[indices_other] {
            result.append(true);
        } else {
            result.append(false);
        }

        n += 1;
    };

    TensorTrait::new(broadcasted_shape, result.span())
}
