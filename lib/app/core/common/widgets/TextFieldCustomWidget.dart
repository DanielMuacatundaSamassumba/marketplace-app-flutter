import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marketplace_app/app/core/enums/textfieldEnum.dart';
import 'package:marketplace_app/app/core/theme/AppPallete.dart';


class TextFieldCustomWidget extends StatefulWidget {
  final String imageIcon;
  final TextfieldenumType fieldType;
  final String label;
  final String hitText;
  final double width;
  final double height;
  final String? hideIconPasswordOpened;
  final String? hideIconPasswordClose;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final Function()? Onchange;

  TextFieldCustomWidget({
    super.key,
    required this.imageIcon,
    required this.fieldType,
    required this.hitText,
    required this.label,
    required this.height,
    required this.width,
    this.hideIconPasswordOpened,
    this.hideIconPasswordClose,
    this.Onchange,
    required this.validator,
    required this.controller
  });
  @override
  State<TextFieldCustomWidget> createState() => _TextFieldCustomWidgetState();
}

class _TextFieldCustomWidgetState extends State<TextFieldCustomWidget> {
  bool isShow = true;
  void showPassword() {
    setState(() {
      isShow = !isShow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return switch (widget.fieldType) {
      TextfieldenumType.email => SizedBox(
        width: widget.width,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: AppPallete.greyColorWhite, width: 1),
            ),
          ),

          child: Column(
            children: [
              Container(width: widget.width, child: Text(widget.label)),
              Row(
                children: [
                  Image(
                    image: AssetImage("assets/${widget.imageIcon}"),
                    width: 22,
                    height: 22,
                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 5),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: widget.validator,
                        controller: widget.controller,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: widget.hitText,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      TextfieldenumType.password => SizedBox(
        width: widget.width,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: AppPallete.greyColorWhite, width: 1),
            ),
          ),

          child: Column(
            children: [
              Container(
                width: widget.width,
                child: Text(
                  widget.label,
                  style: TextStyle(color: AppPallete.greyColorWhite),
                ),
              ),
              Row(
                children: [
                  Image(
                    image: AssetImage("assets/${widget.imageIcon}"),
                    width: 22,
                    height: 22,
                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 5),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        obscureText: isShow,
                        controller: widget.controller,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: widget.validator,
                        decoration: InputDecoration(
                          hintText: widget.hitText,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: showPassword,
                    child: Image(
                      image:
                          isShow
                              ? AssetImage(
                                "assets/${widget.hideIconPasswordOpened}",
                              )
                              : AssetImage(
                                "assets/${widget.hideIconPasswordClose}",
                              ),
                      width: 24,
                      height: 25,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      TextfieldenumType.phone => SizedBox(
        width: widget.width,
        height: widget.height,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: widget.label,
            hintText: widget.hitText,
            border: OutlineInputBorder(),
          ),
        ),
      ),

      TextfieldenumType.text => SizedBox(
        width: widget.width,
        height: widget.height,
        child: TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: widget.label,
            hintText: widget.hitText,
            border: OutlineInputBorder(),
          ),
        ),
      ),
    };
  }
}
