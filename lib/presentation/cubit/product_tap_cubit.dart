import 'package:fake_store/data/repo/product_repo.dart';
import 'package:fake_store/presentation/cubit/product_tap_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductTapCubit extends Cubit<ProductTapState> {
  final ProductRepo _productRepo;
  ProductTapCubit(this._productRepo) : super(ProductTapInitial());

  getAllProducts() async {
    emit(ProductTapLoading());
    var either = await _productRepo.getAllProducts();
    either.fold((response) {
      emit(ProductTapSuccess(productList: response));
    }, (failure) {
      emit(ProductTapFailure(errMsg: failure.errMessage));
    });
  }
}
