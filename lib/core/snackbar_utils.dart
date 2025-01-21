import 'package:fake_store/core/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SnackBarUtils {
  static void showSnackBar({
    required BuildContext context,
    required String text,
    int seconds = 1,
  }) {
    SnackBar snackBar = SnackBar(
      duration: Duration(seconds: seconds),
      backgroundColor: AppColors.whiteColor,
      content: Text(
        text,
        style: GoogleFonts.poppins(
            textStyle:
                const TextStyle(color: AppColors.primaryColor, fontSize: 16)),
      ),
    );
    ScaffoldMessenger.maybeOf(context)?.showSnackBar(snackBar);
  }
}
