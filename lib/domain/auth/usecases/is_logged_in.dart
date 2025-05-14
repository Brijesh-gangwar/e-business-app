import 'package:e_business/core/usecase/usecase.dart';
import 'package:e_business/domain/auth/repository/auth.dart';
import 'package:e_business/service_locator.dart';

class IsLoggedInUseCase implements UseCase<bool,dynamic> {

  @override
  Future<bool> call({params}) async {
    return await sl<AuthRepository>().isLoggedIn();
  }

}