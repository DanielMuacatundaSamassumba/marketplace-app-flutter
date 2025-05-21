abstract class Userloginrepository {
  String email = "";
  String password = "";

  void setEmail(email) {
    this.email = email;
  }

  void setPassword(password) {
    this.password = password;
  }
  @override
   void  auth() {}
}
