import 'package:cached_network_image/cached_network_image.dart';
import 'package:fake_store/data/models/product_model/products_model.dart';

import 'package:fake_store/presentation/widgets/custom_circular_indicator.dart';
import 'package:fake_store/presentation/widgets/custom_err_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProductImage extends StatelessWidget {
  const CustomProductImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: product.image ?? '',
      width: 191.w,
      height: 128.h,
      fit: BoxFit.contain,
      placeholder: (context, url) => const CustomCircularIndicator(),
      errorWidget: (context, url, error) => const CustomErrIcon(),
    );
  }
}
