

import 'package:fake_store/presentation/cubit/product_tap_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductTapCubit extends Cubit<ProductTapState> {
  ProductTapCubit(
     )
      : super(ProductTapInitial());
 
  
  getAllProducts() async {
   /* emit(ProductTapLoading());
    var either = await _allProductsUseCase.call();
    either.fold((response) {
      
      emit(ProductTapSuccess(productList: response.productsList!));
    }, (failure) {
      emit(ProductTapFailure(errMsg: failure.errMessage));
    });*/
  }

}
