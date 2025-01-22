// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/repo/product_repo.dart' as _i606;
import '../../data/repo/product_repo_impl.dart' as _i910;
import '../../presentation/cubit/product_tap_cubit.dart' as _i273;
import '../api/api_manager.dart' as _i1047;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i1047.ApiManager>(() => _i1047.ApiManager());
    gh.factory<_i606.ProductRepo>(
        () => _i910.ProductRepoImpl(gh<_i1047.ApiManager>()));
    gh.factory<_i273.ProductTapCubit>(
        () => _i273.ProductTapCubit(gh<_i606.ProductRepo>()));
    return this;
  }
}
