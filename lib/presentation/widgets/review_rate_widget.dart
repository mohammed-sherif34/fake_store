import 'package:fake_store/core/color_manager.dart';
import 'package:fake_store/core/constant_double_values.dart';
import 'package:fake_store/data/models/product_model/products_model.dart';
import 'package:fake_store/presentation/widgets/custom_add_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewRateWidget extends StatelessWidget {
  const ReviewRateWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Review (${product.rating!.rate})',
          style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.titleSmall!),
        ),
        const Icon(
          Icons.star,
          color: AppColors.yellow,
          size: ConstDValues.s20,
        ),
        const Spacer(),
        const CustomAddIconButton()
      ],
    );
  }
}
