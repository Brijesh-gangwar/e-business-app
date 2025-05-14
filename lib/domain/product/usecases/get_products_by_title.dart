import 'package:dartz/dartz.dart';
import 'package:e_business/core/usecase/usecase.dart';
import 'package:e_business/domain/product/repository/product.dart';
import 'package:e_business/service_locator.dart';

class GetProductsByTitleUseCase implements UseCase<Either,String> {

  @override
  Future<Either> call({String? params}) async {
    return await sl<ProductRepository>().getProductsByTitle(params!);
  }

}