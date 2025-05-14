import 'package:dartz/dartz.dart';
import 'package:e_business/core/usecase/usecase.dart';
import 'package:e_business/data/auth/models/user_creation_req.dart';
import 'package:e_business/domain/auth/repository/auth.dart';
import 'package:e_business/service_locator.dart';

class SignupUseCase implements UseCase<Either,UserCreationReq> {


  @override
  Future<Either> call({UserCreationReq ? params}) async {
    return await sl<AuthRepository>().signup(params!);
  }

  
}