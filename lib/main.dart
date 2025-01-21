import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const FakeStoreApp());
}
class FakeStoreApp extends StatelessWidget {
  const FakeStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        home: Scaffold(),
      ),
    );
  }
}