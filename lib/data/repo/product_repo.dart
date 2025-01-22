import 'package:dartz/dartz.dart';
import 'package:fake_store/core/failures/failure.dart';
import 'package:fake_store/data/models/product_model/products_model.dart';

abstract class ProductRepo {
  Future<Either<ProductsModel, Failure>> getAllProducts();
}
