import 'package:flutter/material.dart';
import 'package:marketplace_app/app/core/theme/AppPallete.dart';

class WidgetTopAuth extends StatelessWidget {
  final String imageLogo;
  final String title;
  final String paragraph;
  const WidgetTopAuth({
    super.key,
    required this.imageLogo,
    required this.title,
    required this.paragraph,
  });
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Image(image: AssetImage("assets/$imageLogo"), width: 64, height: 48),
         Container(
          margin: EdgeInsets.only(top: 10),
            child:  Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppPallete.greyColorDark,
          
          ),
        ),
         ),

        Text(
          paragraph,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: AppPallete.greyColorDark,
          ),
        ),
      ],
    ));
  }
}
