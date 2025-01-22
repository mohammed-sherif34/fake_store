import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:fake_store/core/api/api_manager.dart';
import 'package:fake_store/core/api/end_points.dart';
import 'package:fake_store/core/api/status_code.dart';
import 'package:fake_store/core/failures/failure.dart';
import 'package:fake_store/data/models/product_model/products_model.dart';
import 'package:fake_store/data/repo/product_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductRepo)
class ProductRepoImpl implements ProductRepo {
  late ApiManager apiManager;
  ProductRepoImpl(this.apiManager);
  @override
  Future<Either<ProductsModel, Failure>> getAllProducts() async {
    final List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.wifi) ||
        connectivityResult.contains(ConnectivityResult.mobile)) {
      try {
        var response = await apiManager.get(
          endPoint: EndPoints.products,
        );
        var productResponse = ProductsModel.fromJson(response.data);
        if (response.statusCode! >= StatusCodes.success &&
            response.statusCode! <= StatusCodes.failure) {
          return Left(productResponse);
        } else {
          return Right(Failure(errMessage: 'oops something went erong !!'));
        }
      } on Exception catch (e) {
        return Right(Failure(errMessage: e.toString()));
      }
    } else {
      return Right(NetworkErr(errMessage: 'Check your internet connection'));
    }
  }
}
