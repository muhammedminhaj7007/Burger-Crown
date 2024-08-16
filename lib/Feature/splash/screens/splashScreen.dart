import 'package:burger_crown/Const/ImageConst.dart';
import 'package:burger_crown/Const/colorConst.dart';
import 'package:burger_crown/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../login/screens/loginPage.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Navigator.pushAndRemoveUntil(
            context,
            CupertinoPageRoute(
              builder: (context) => const loginPage(),
            ),
            (route) => false));
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: h * 1,
            width: w * 1,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      ColorConst.primaryConst,
                      ColorConst.secondaryConst,
                    ],
                    end: Alignment.topRight,
                    begin: Alignment.bottomLeft,
                    stops: [0.4, 0.9])),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: h * 0.32, left: w * 0.2),
                  child: SizedBox(
                    height: h * 0.30,
                    width: w * 0.7,
                    child: const Image(
                      image: AssetImage(ImageConst.logo),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: h * 0.13,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: h * 0.25,
                        width: w * 0.6,
                        child: const Image(
                          image: AssetImage(ImageConst.food),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
