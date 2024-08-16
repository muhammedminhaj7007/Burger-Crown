import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Const/ImageConst.dart';
import '../../../Const/colorConst.dart';
import '../../../main.dart';

class favoritePage extends StatefulWidget {
  const favoritePage({super.key});

  @override
  State<favoritePage> createState() => _favoritePageState();
}

class _favoritePageState extends State<favoritePage> {
  List A = [
    {
      "image": "https://img.freepik.com/free-psd/fresh-beef-burger-isolated-transparent-background_191095-9018.jpg?size=338&ext=jpg&ga=GA1.1.2113030492.1720310400&semt=ais_user",
      "text": "Burger Cheese",
      "price": "Rs : 299",
    },
    {
      "image": "https://img.pikbest.com/origin/09/19/19/91rpIkbEsTnXY.png!sw800",
      "text": "Chicken Burger",
      "price": "Rs : 99",
    },
    {
      "image": "https://p7.hiclipart.com/preview/474/88/863/cheeseburger-hamburger-whopper-french-fries-burger-king-burger-king.jpg",
      "text": "Combo Offer",
      "price": "Rs : 499",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: h * 0.10,
        centerTitle: true,
        title: Text(
          "Favorite",
          style: TextStyle(fontSize: w * 0.05,
              color: ColorConst.primaryConst,
              fontWeight: FontWeight.w900),
        ),
        actions: [
          InkWell(
            onTap: () {
              // Navigator.push(context,MaterialPageRoute(builder: (context) => Profilepage(),));
            },
            child: CircleAvatar(
                radius: w * 0.07,
                child: Image.asset(
                  ImageConst.man,
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            width: w * 0.05,
          )
        ],
        elevation: 0,
        backgroundColor: ColorConst.white,
      ),
      body: Scaffold(
        body: Column(
          children: [
            ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Container(
                    height: h * 0.7,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      // color: ColorConst.secondaryConst
                    ),
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: h * 0.15,
                                    width: w * 0.9,
                                    decoration: BoxDecoration(
                                        color:ColorConst.white,
                                        borderRadius: BorderRadius.circular(w*0.03),
                                        border:  Border.all(
                                            color: ColorConst.primaryConst
                                        )
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: h * 0.2,
                                          width: w * 0.3,
                                          decoration: BoxDecoration(
                                            // color: Colors.blue,
                                              borderRadius: BorderRadius.circular(
                                                  w * 0.04)),
                                          child: Image.network(
                                            A[index]["image"],
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              A[index]["text"],
                                              style: TextStyle(
                                                  fontSize: w * 0.04,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              A[index]["price"],
                                              style: TextStyle(
                                                  fontSize: w * 0.035,
                                                  fontWeight: FontWeight.w600,
                                                  color:
                                                  ColorConst.black),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.favorite,
                                              color: ColorConst.secondaryConst,
                                            ),
                                            SizedBox(
                                              width: w*0.03,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: h * 0.04,
                          );
                        },
                        itemCount: A.length),
                  ),
                ]),

          ],
        ),
      ),
    );
  }
}
