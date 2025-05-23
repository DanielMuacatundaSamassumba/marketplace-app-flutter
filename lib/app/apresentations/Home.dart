import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marketplace_app/app/core/common/widgets/TextFieldCustomWidget.dart';
import 'package:marketplace_app/app/core/constants/image_paths.dart';
import 'package:marketplace_app/app/core/enums/textfieldEnum.dart';
import 'package:marketplace_app/app/core/theme/AppPallete.dart';
import 'package:marketplace_app/app/core/validations/AuthValidation.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        child: Image(
                          image: AssetImage("assets/${ImagePaths.avatarUser}"),
                          width: 56,
                          height: 56,
                        ),
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text(
                              "Olá, Brandon!",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),

                          InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Ver perfil",
                                  style: TextStyle(
                                    color: AppPallete.orangeColor,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),

                                // ignore: avoid_unnecessary_containers
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                    child: Image(
                                      image: AssetImage(
                                        "assets/${ImagePaths.arrowRightOrangeColor}",
                                      ),
                                      width: 14,
                                      height: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  margin:  EdgeInsets.only(top: 40),
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explorar Produtos",
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 20),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(width: 1)),
                              ),
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                      "assets/${ImagePaths.searchIcon}",
                                    ),
                                    width: 30,
                                    height: 30,
                                  ),

                                  Container(
                                    width: 280,
                                    child: TextField(
                                     
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Pesquisar"
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                             Container(
                              margin: EdgeInsets.only(left: 5),
                               child:  Image(
                              image: AssetImage(
                                "assets/${ImagePaths.filterIcon}",
                              ),
                              width: 50,
                              height: 50,
                            ),
                             )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
