import 'package:flutter/material.dart';
import 'package:marketplace_app/app/aplication/usecases/auth/UserLoginUseCase.dart';
import 'package:marketplace_app/app/apresentations/Home.dart';
import 'package:marketplace_app/app/core/common/widgets/ButtonCostumWidget.dart';
import 'package:marketplace_app/app/core/common/widgets/WidgetTopAuth.dart';
import 'package:marketplace_app/app/core/constants/image_paths.dart';
import "package:marketplace_app/app/core/common/widgets/TextFieldCustomWidget.dart";
import 'package:marketplace_app/app/core/enums/textfieldEnum.dart';
import 'package:marketplace_app/app/core/theme/AppPallete.dart';
import 'package:marketplace_app/app/domain/repositories/UserLoginRepository.dart';
import 'package:marketplace_app/app/infra/Irepository/UserLoginImp.dart';
import 'package:get_it/get_it.dart';
final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerSingleton<Userloginrepository>(Userloginimp());
  getIt.registerFactory(() => UserLoginUsecase(repository: getIt<Userloginrepository>()));
}
void main() {
  setupDependencies();
  runApp(const Login());
}




class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return (
       
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home()
        )
        );
  }
}

