
import 'package:fake_store/core/assets_manager.dart';
import 'package:fake_store/core/color_manager.dart';
import 'package:fake_store/presentation/cubit/product_tap_cubit.dart';
import 'package:fake_store/presentation/cubit/product_tap_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteIcon extends StatefulWidget {
  const FavouriteIcon({
    super.key,
    //required this.product,
  });
  //final Product product;
  @override
  State<FavouriteIcon> createState() => _FavouriteIconState();
}

class _FavouriteIconState extends State<FavouriteIcon> {
  bool activeCheck = false;
  //final String productId;
 // var viewModel = getIt.get<ProductTapCubit>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 30.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () {
         /* activeCheck == false
              ? viewModel.addProductToFavourite(productId: widget.product.id)
              : viewModel.removeProductFromFavourite(
                  productId: widget.product.id);
          activeCheck = !activeCheck;*/
        },
        child: BlocBuilder<ProductTapCubit, ProductTapState>(
         // bloc: viewModel,
          builder: (context, state) {
            return ImageIcon(
              color: AppColors.primaryColor,
              AssetImage(
                activeCheck
                    ? ImageAssets.favouriteActiveIcon
                    : ImageAssets.favouriteIcon,
              ),
            );
          },
        ),
      ),
    );
  }
}
