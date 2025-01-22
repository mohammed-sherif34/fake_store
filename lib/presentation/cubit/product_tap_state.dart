import 'package:fake_store/data/models/product_model/products_model.dart';

abstract class ProductTapState {}

final class ProductTapInitial extends ProductTapState {}

class ProductTapLoading extends ProductTapState {}

class ProductTapFailure extends ProductTapState {
  final String errMsg;
  ProductTapFailure({required this.errMsg});
}

class ProductTapSuccess extends ProductTapState {
  ProductTapSuccess({required this.productList});

  ProductsModel productList;
}

final class FavouriteSuccessState extends ProductTapState {}

final class FavouriteErrState extends ProductTapState {
  final String errMsg;

  FavouriteErrState(this.errMsg);
}

final class FavouriteLoadingState extends ProductTapState {}

final class AddToCartSuccessState extends ProductTapState {}

final class AddToCartErrState extends ProductTapState {
  final String errMsg;

  AddToCartErrState(this.errMsg);
}

final class AddToCartLoadingState extends ProductTapState {}
