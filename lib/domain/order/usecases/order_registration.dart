import 'package:dartz/dartz.dart';
import 'package:e_business/core/usecase/usecase.dart';
import 'package:e_business/data/order/models/order_registration_req.dart';
import 'package:e_business/domain/order/repository/order.dart';
import 'package:e_business/service_locator.dart';

class OrderRegistrationUseCase implements UseCase<Either,OrderRegistrationReq> {
  @override
  Future<Either> call({OrderRegistrationReq ? params}) async {
    return sl<OrderRepository>().orderRegistration(params!);
  }

}