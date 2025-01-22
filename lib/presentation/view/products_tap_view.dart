import 'package:fake_store/core/constant_double_values.dart';
import 'package:fake_store/core/di/di.dart';
import 'package:fake_store/core/snackbar_utils.dart';
import 'package:fake_store/presentation/cubit/product_tap_cubit.dart';
import 'package:fake_store/presentation/cubit/product_tap_state.dart';
import 'package:fake_store/presentation/widgets/custom_circular_indicator.dart';
import 'package:fake_store/presentation/widgets/custom_err_icon.dart';
import 'package:fake_store/presentation/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsTapView extends StatefulWidget {
  const ProductsTapView({super.key});

  @override
  State<ProductsTapView> createState() => _ProductsTapViewState();
}

class _ProductsTapViewState extends State<ProductsTapView> {
  ProductTapCubit viewModel = getIt.get<ProductTapCubit>();
  @override
  void initState() {
    viewModel.getAllProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<ProductTapCubit, ProductTapState>(
            bloc: viewModel,
            listener: (context, state) {
              if (state is ProductTapFailure) {
                SnackBarUtils.showSnackBar(
                  context: context,
                  text: state.errMsg,
                  seconds: 3,
                );
              }
            },
            builder: (context, state) {
              if (state is ProductTapSuccess) {
                return Expanded(
                  child: GridView.builder(
                    itemCount: state.productList.products!.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 270.h,
                        mainAxisSpacing: ConstDValues.s16.h,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return ProductItem(
                        product: state.productList.products![index],
                      );
                    },
                  ),
                );
              } else if (state is ProductTapFailure) {
                return const CustomErrIcon();
              } else {
                return const CustomCircularIndicator();
              }
            },
          )
        ],
      ),
    );
  }
}
