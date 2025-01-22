import 'package:fake_store/core/di/di.dart';
import 'package:fake_store/presentation/cubit/product_tap_cubit.dart';
import 'package:fake_store/presentation/view/products_tap_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(BlocProvider(
    create: (context) => getIt.get<ProductTapCubit>(),
    child: const FakeStoreApp(),
  ));
}

class FakeStoreApp extends StatelessWidget {
  const FakeStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ProductsTapView(),
        ),
      ),
    );
  }
}
