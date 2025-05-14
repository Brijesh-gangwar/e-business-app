import 'package:e_business/core/usecase/usecase.dart';
import 'package:e_business/domain/product/repository/product.dart';
import 'package:e_business/service_locator.dart';

class IsFavoriteUseCase implements UseCase<bool,String> {

  @override
  Future<bool> call({String ? params}) async {
    return await sl<ProductRepository>().isFavorite(params!);
  }

}