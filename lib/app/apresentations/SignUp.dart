import 'package:flutter/material.dart';
import 'package:marketplace_app/app/core/common/widgets/ButtonCostumWidget.dart';
import 'package:marketplace_app/app/core/common/widgets/TextFieldCustomWidget.dart';
import 'package:marketplace_app/app/core/common/widgets/WidgetTopAuth.dart';
import 'package:marketplace_app/app/core/constants/image_paths.dart';
import 'package:marketplace_app/app/core/enums/textfieldEnum.dart';
import 'package:marketplace_app/app/core/theme/AppPallete.dart';
import 'package:marketplace_app/app/core/validations/AuthValidation.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(home: SignUpForm(), color: AppPallete.whiteColor));
  }
}

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final confPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 35),
                child: Center(
                  child: WidgetTopAuth(
                    title: "Crie sua conta",
                    paragraph: "Informe os seus dados pessoais e de acesso",
                    imageLogo: ImagePaths.logoWithoutText,
                  ),
                ),
              ),

              Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: TextFieldCustomWidget(
                          controller: nameController,
                          hitText: "Seu nome completo",
                          label: "Nome",
                          imageIcon: ImagePaths.userIcon,
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 58,
                          fieldType: TextfieldenumType.text,
                          validator: (name)=>AuthValidation.nameValidation(name)
                          
                        ,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 90,
                      child: Container(
                        margin: EdgeInsets.only(top: 12),
                        child: TextFieldCustomWidget(
                          controller: phoneNumberController,
                          hitText: "(00) 00000 - 0000",
                          label: "TELEFONE",
                          imageIcon: ImagePaths.phoneIcon,
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 58,
                          fieldType: TextfieldenumType.text,
                          validator: (phone)=>  AuthValidation.validationEmail(phone)
                        ),
                      ),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.only(top: 40),
                      child: Text(
                        textAlign: TextAlign.start,
                        "Acesso",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),

                    SizedBox(
                      child: Container(
                        margin: EdgeInsets.only(top: 22),
                        child: TextFieldCustomWidget(
                          controller: emailController,
                          hitText: "mail@gmail.com",
                          label: "E-MAIL",
                          imageIcon: ImagePaths.mailIcon,
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 58,
                          fieldType: TextfieldenumType.email,
                          validator: (email)=>AuthValidation.validationEmail(email)
                        ),
                      ),
                    ),

                    SizedBox(
                      child: Container(
                        margin: EdgeInsets.only(top: 12),
                        child: TextFieldCustomWidget(
                          controller: passwordController,
                          hitText: "Sua  senha",
                          label: "Palavra-passe",
                          imageIcon: ImagePaths.passwordIcon,
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 58,
                          fieldType: TextfieldenumType.password,
                          hideIconPasswordClose: ImagePaths.eyesIconClose,
                          hideIconPasswordOpened: ImagePaths.eyesIconOPened,
                          validator: (password)=> AuthValidation.validationPassword(password)
                        ),
                      ),
                    ),

                    SizedBox(
                      child: Container(
                        margin: EdgeInsets.only(top: 12),
                        child: TextFieldCustomWidget(
                          controller: confPasswordController,
                          hitText: "Confirme a senha",
                          label: "Palavra-passe",
                          imageIcon: ImagePaths.passwordIcon,
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 58,
                          fieldType: TextfieldenumType.password,
                          hideIconPasswordClose: ImagePaths.eyesIconClose,
                          hideIconPasswordOpened: ImagePaths.eyesIconOPened,
                          validator: (confPassword)=> AuthValidation.passWordsValidations(confPassword, passwordController.text)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: ButtonBgfullWideget(
                  name: "Cadastrar",
                  onPressFunction: () => {
                     formKey.currentState?.validate()
                  },
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
