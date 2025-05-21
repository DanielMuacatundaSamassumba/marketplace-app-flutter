import 'package:marketplace_app/app/domain/repositories/UserLoginRepository.dart';

class UserLoginUsecase {
   final Userloginrepository _userloginepository;
 UserLoginUsecase({required Userloginrepository repository}) 
      : _userloginepository = repository;

  String execute() {
    dynamic response = _userloginepository.toString();
    return response;
  }
}
