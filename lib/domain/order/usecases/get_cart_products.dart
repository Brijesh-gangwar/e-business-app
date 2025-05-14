import 'package:dartz/dartz.dart';
import 'package:e_business/core/usecase/usecase.dart';
import 'package:e_business/domain/order/repository/order.dart';
import 'package:e_business/service_locator.dart';

class GetCartProductsUseCase implements UseCase<Either,dynamic> {

  @override
  Future<Either> call({dynamic params}) async {
    return sl<OrderRepository>().getCartProducts();
  }

}