import 'package:flutter/material.dart';
import 'package:marketplace_app/app/aplication/usecases/auth/UserLoginUseCase.dart';
import 'package:marketplace_app/app/apresentations/SignUp.dart';
import 'package:marketplace_app/app/core/common/widgets/ButtonCostumWidget.dart';
import 'package:marketplace_app/app/core/common/widgets/WidgetTopAuth.dart';
import 'package:marketplace_app/app/core/constants/image_paths.dart';
import "package:marketplace_app/app/core/common/widgets/TextFieldCustomWidget.dart";
import 'package:marketplace_app/app/core/enums/textfieldEnum.dart';
import 'package:marketplace_app/app/core/theme/AppPallete.dart';
import 'package:marketplace_app/app/core/validations/LoginFornValidation.dart';
import 'package:marketplace_app/app/domain/repositories/UserLoginRepository.dart';
import 'package:marketplace_app/app/infra/Irepository/UserLoginImp.dart';
import 'package:get_it/get_it.dart';
import 'package:marketplace_app/main.dart';

class Login extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  child: Center(
                    child: WidgetTopAuth(
                      imageLogo: ImagePaths.logoWithoutText,
                      title: "Acesse sua conta",
                      paragraph: "Informe seu e-mail e senha para entrar",
                    ),
                  ),
                ),

                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: TextFieldCustomWidget(
                          fieldType: TextfieldenumType.email,
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 48,
                          label: "E-mail",
                          hitText: "mail@exemplo.ao",
                          imageIcon: ImagePaths.mailIcon,
                          controller: emailController,
                          validator:
                              (name) =>
                                  LoginFormValidation.validationEmail(name),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            TextFieldCustomWidget(
                              fieldType: TextfieldenumType.password,
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: 48,
                              label: "Senha",
                              hitText: "Sua senha",
                              imageIcon: ImagePaths.passwordIcon,
                              hideIconPasswordOpened: ImagePaths.eyesIconOPened,
                              controller: passwordController,
                              validator:
                                  (name) =>
                                      LoginFormValidation.validationPassword(
                                        name,
                                      ),
                              hideIconPasswordClose: ImagePaths.eyesIconClose,
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 30),
                              child: ButtonBgfullWideget(
                                name: "Entrar",
                                onPressFunction: () {},
                                height: 56,
                                width: MediaQuery.of(context).size.width * 0.8,
                                iconImage: ImagePaths.arrowRight,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 30),
              child: ButtonWithoutBgWideget(
                name: "Cadastrar",
                onPressFunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                height: 56,
                width: MediaQuery.of(context).size.width * 0.8,
                iconImage: ImagePaths.arrowRightOrangeColor,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
