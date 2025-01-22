import 'package:fake_store/core/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAddIconButton extends StatefulWidget {
  const CustomAddIconButton({
    super.key,
  });

  @override
  State<CustomAddIconButton> createState() => _CustomAddIconButtonState();
}

class _CustomAddIconButtonState extends State<CustomAddIconButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 30.w,
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20)),
      child: const Icon(
        weight: 10,
        FontAwesomeIcons.plus,
        color: AppColors.whiteColor,
        size: 20,
      ),
    );
  }
}
