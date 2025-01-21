
import 'package:fake_store/core/color_manager.dart';
import 'package:fake_store/core/constant_double_values.dart';
import 'package:fake_store/presentation/widgets/custom_product_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, 
  //required this.product
  });
 // final Product product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        InkWell(
          onTap: () {
           
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: ConstDValues.s8),
            padding: EdgeInsets.all(6.h),
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset:  Offset(0, 3), // changes position of shadow
                  ),
                ],
                border: Border.all(width: .5, color: Colors.grey),
                borderRadius: BorderRadius.circular(ConstDValues.s15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomProductImage(product: product),
                SizedBox(
                  width: 120.w,
                  child: Text(
                    product.title ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.titleSmall),
                  ),
                ),
                Text(
                  product.description ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.titleSmall),
                ),
                Text(
                  'EGP ${product.price}',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.titleSmall),
                ),
                ReviewRateWidget(product: product)
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: ConstDValues.s11.h, right: ConstDValues.s17.w),
          child:  FavouriteIcon(product: product,),
        ),
      ],
    );
  }
}
