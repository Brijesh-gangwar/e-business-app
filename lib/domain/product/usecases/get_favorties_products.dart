import 'package:dartz/dartz.dart';
import 'package:e_business/core/usecase/usecase.dart';
import 'package:e_business/domain/product/repository/product.dart';
import 'package:e_business/service_locator.dart';

class GetFavortiesProductsUseCase implements UseCase<Either,dynamic> {

  @override
  Future<Either> call({dynamic params}) async {
    return await sl<ProductRepository>().getFavoritesProducts();
  }

}