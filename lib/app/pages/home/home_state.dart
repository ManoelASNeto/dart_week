import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

import '../../dto/order_product_dto.dart';
import '../../models/product_model.dart';

part 'home_state.g.dart';

@match
enum HomeStatus {
  initial,
  loading,
  ready,
  error,
}

class HomeState extends Equatable {
  final HomeStatus status;
  final List<ProductModel> products;
  final String? errorMessage;
  final List<OrderProductDto> shoppingBag;

  const HomeState({
    required this.status,
    required this.products,
    this.errorMessage,
    required this.shoppingBag,
  });

  const HomeState.initial()
      : status = HomeStatus.initial,
        products = const [],
        shoppingBag = const [],
        errorMessage = null;

  @override
  List<Object?> get props => [
        status,
        products,
        errorMessage,
        shoppingBag,
      ];

  HomeState copyWith({
    HomeStatus? status,
    List<ProductModel>? products,
    String? errorMessage,
    List<OrderProductDto>? shoppingBag,
  }) {
    return HomeState(
      status: status ?? this.status,
      products: products ?? this.products,
      errorMessage: errorMessage ?? this.errorMessage,
      shoppingBag: shoppingBag ?? this.shoppingBag,
    );
  }
}
