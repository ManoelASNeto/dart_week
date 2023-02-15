import '../models/product_model.dart';

class OrderProductDto {
  final ProductModel productModel;
  final int amount;

  OrderProductDto({
    required this.productModel,
    required this.amount,
  });

  double get totalPrice => amount * productModel.price;

  OrderProductDto copyWith({
    ProductModel? productModel,
    int? amount,
  }) {
    return OrderProductDto(
      productModel: productModel ?? this.productModel,
      amount: amount ?? this.amount,
    );
  }
}
