import 'package:flutter/material.dart';
import 'package:marketplace_app/app/core/common/widgets/ButtonCostumWidget.dart';
import 'package:marketplace_app/app/core/common/widgets/WidgetTopAuth.dart';
import 'package:marketplace_app/app/core/constants/image_paths.dart';
import "package:marketplace_app/app/core/common/widgets/TextFieldCustomWidget.dart";
import 'package:marketplace_app/app/core/enums/textfieldEnum.dart';
import 'package:marketplace_app/app/core/theme/AppPallete.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(home: LoginForm()));
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  void _mybutton() {}

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

                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: TextFieldCustomWidget(
                    fieldType: TextfieldenumType.email,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 48,
                    label: "E-mail",
                    hitText: "mail@exemplo.ao",
                    imageIcon: ImagePaths.mailIcon,
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
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: ButtonBgfullWideget(
                          name: "Entrar",
                          onPressFunction: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                actions: [
                                  TextButton(onPressed: (){
                                    Navigator.of(context).pop();
                                  },
                                   child: Text("close"))
                                ],
                                title: const Text("Marketplace"),
                                content: const Text("Formulario enviado com sucesso"),
                              ),
                            
                            );
                          },
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
            Container(
              margin: EdgeInsets.only(top: 30),
              child: ButtonWithoutBgWideget(
                name: "Cadastrar",
                onPressFunction: _mybutton,
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
