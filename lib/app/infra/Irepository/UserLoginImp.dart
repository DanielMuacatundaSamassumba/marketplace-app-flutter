import 'package:marketplace_app/app/domain/repositories/UserLoginRepository.dart';

class Userloginimp implements Userloginrepository {
  String email = "";
  String password = "";

  void setEmail(email) {
    this.email = email;
  }

  void setPassword(password) {
    this.password = password;
  }

  @override
  void auth() {
    print("A seu email é ${this.email} e sua senha é ${this.password}");
  }
}
