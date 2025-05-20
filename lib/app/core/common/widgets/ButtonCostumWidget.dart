import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marketplace_app/app/core/constants/image_paths.dart';
import 'package:marketplace_app/app/core/theme/AppPallete.dart';

class ButtonBgfullWideget extends StatelessWidget {
  final String name;
  final Function()? onPressFunction;
  final String iconImage;
  final double width;
  final double height;

  const ButtonBgfullWideget({
    super.key,
    required this.name,
    required this.onPressFunction,
    this.iconImage = "",
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        children: [
          SizedBox(
            width: width,
            height: height,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: AppPallete.orangeColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: onPressFunction,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: AppPallete.whiteColor,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 28,
                    height: 30,
                    child: Image(
                      image: AssetImage("assets/${ImagePaths.arrowRight}"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonWithoutBgWideget extends StatelessWidget {
  final String name;
  final Function()? onPressFunction;
  final String iconImage;
  final double width;
  final double height;

  const ButtonWithoutBgWideget({
    super.key,
    required this.name,
    required this.onPressFunction,
    this.iconImage = "",
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        children: [
          SizedBox(
            width: width,
            height: height,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                side: BorderSide(color: AppPallete.orangeColor, width: 2), //
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: onPressFunction,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(name, style: TextStyle(color: AppPallete.orangeColor)),

                  SizedBox(
                    child: Image(
                      image: AssetImage("assets/$iconImage"),
                      width: 28,
                      height: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
