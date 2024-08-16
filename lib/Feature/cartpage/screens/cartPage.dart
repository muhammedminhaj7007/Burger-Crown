import 'package:burger_crown/Const/ImageConst.dart';
import 'package:burger_crown/Const/colorConst.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../orderpage/screens/orderPage.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
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
          "Your Food Cart",
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
      body: Column(
        children: [
          ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Container(
                  height: h * 0.52,
                  decoration: BoxDecoration(
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
                                         Container(
                                           height: h*0.035,
                                           width: w*0.25,
                                           decoration: BoxDecoration(
                                             border: Border.all(
                                               color: ColorConst.primaryConst,
                                             ),
                                             borderRadius: BorderRadius.circular(w*0.05)
                                           ),
                                           child: Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             children: [
                                               Icon(Icons.remove),
                                               Text("1"),
                                               Icon(Icons.add),
                                             ],
                                           ),
                                         )
                                        ],
                                      ),
                                      Icon(
                                        Icons.clear,
                                        color: ColorConst.secondaryConst,
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
                Padding(
                  padding: EdgeInsets.only(left: w * 0.04, right: w * 0.04),
                  child: Container(
                    height: h * 0.27,
                    width: w * 0.8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "CART TOTAL : ",
                              style: TextStyle(
                                  fontSize: w * 0.035,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConst.secondaryConst),
                            ),
                            Text(
                              "Rs 1220.1",
                              style: TextStyle(
                                  fontSize: w * 0.035,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConst.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tax : ",
                              style: TextStyle(
                                  fontSize: w * 0.035,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConst.secondaryConst),
                            ),
                            Text(
                              "Rs 12.04",
                              style: TextStyle(
                                  fontSize: w * 0.035,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConst.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivary :",
                              style: TextStyle(
                                  fontSize: w * 0.035,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConst.black),
                            ),
                            Text(
                              "49",
                              style: TextStyle(
                                  fontSize: w * 0.035,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConst.black),
                            ),
                          ],
                        ),
                        Divider(
                          color: ColorConst.primaryConst,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sub Total :",
                              style: TextStyle(
                                  fontSize: w * 0.05,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConst.black),
                            ),
                            Text(
                              "Rs 1220.1",
                              style: TextStyle(
                                  fontSize: w * 0.05,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConst.black),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, CupertinoPageRoute(builder: (context) => orderPage(),));
                          },
                          child: Container(
                            height: h * 0.05,
                            width: w * 0.5,
                            decoration: BoxDecoration(
                              color: ColorConst.primaryConst,
                              borderRadius: BorderRadius.circular(w * 0.05),
                            ),
                            child: Center(
                                child: Text(
                              "Order now",
                              style: TextStyle(
                                  fontSize: w * 0.05,
                                  fontWeight: FontWeight.w900,
                                  color: ColorConst.white),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}
