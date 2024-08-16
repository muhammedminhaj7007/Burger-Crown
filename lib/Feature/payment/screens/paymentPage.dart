import 'package:burger_crown/Const/ImageConst.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Const/colorConst.dart';
import '../../../main.dart';

class paymentPage extends StatefulWidget {
  const paymentPage({super.key});

  @override
  State<paymentPage> createState() => _paymentPageState();
}

class _paymentPageState extends State<paymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Payment",
          style: TextStyle(
              fontSize: w * 0.05,
              color: ColorConst.white,
              fontWeight: FontWeight.w900),
        ),
        backgroundColor: ColorConst.primaryConst,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(CupertinoIcons.back)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Padding(
            padding: EdgeInsets.all(w * 0.03),
            child: Container(
              height: h * 0.12,
              width: w * 0.95,
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConst.primaryConst),
                  borderRadius: BorderRadius.circular(w * 0.03)),
              child: Column(
                children: [
                  Text("Delivery Method",
                      style: TextStyle(
                          fontSize: w * 0.05,
                          color: ColorConst.primaryConst,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("+91 8593807999",
                          style: TextStyle(
                              fontSize: w * 0.03,
                              color: ColorConst.black,
                              fontWeight: FontWeight.w600)),
                      Text("Change",
                          style: TextStyle(
                              fontSize: w * 0.05,
                              color: ColorConst.primaryConst,
                              fontWeight: FontWeight.w600))
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: h * 0.2,
            width: w * 0.95,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Payment",style: TextStyle(
                        fontSize: w * 0.05,
                        color: ColorConst.primaryConst,
                        fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(
                  height: h*0.03,
                ),
                Container(
                  height: h * 0.11,
                  width: w * 0.95,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: h*0.075,
                        width: w*0.22,
                        child: SvgPicture.asset(ImageConst.add),
                        decoration: BoxDecoration(
                            color: ColorConst.white,
                            borderRadius:BorderRadius.circular(w*0.03),
                            border: Border.all(
                                color: ColorConst.primaryConst
                            )
                        ),
                      ),
                      Container(
                        height: h*0.075,
                        width: w*0.22,
                        child: SvgPicture.asset(ImageConst.mastercard),
                        decoration: BoxDecoration(
                            color: ColorConst.white,
                            borderRadius:BorderRadius.circular(w*0.03),
                            border: Border.all(
                                color: ColorConst.primaryConst
                            )
                        ),
                      ),
                      Container(
                        height: h*0.075,
                        width: w*0.22,
                        child: SvgPicture.asset(ImageConst.paypal),
                        decoration: BoxDecoration(
                            color: ColorConst.white,
                            borderRadius:BorderRadius.circular(w*0.03),
                            border: Border.all(
                                color: ColorConst.primaryConst
                            )
                        ),
                      ),
                      Container(
                        height: h*0.075,
                        width: w*0.22,
                        child: SvgPicture.asset(ImageConst.stripe),
                        decoration: BoxDecoration(
                            color: ColorConst.white,
                            borderRadius:BorderRadius.circular(w*0.03),
                            border: Border.all(
                                color: ColorConst.primaryConst
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: h * 0.27,
            width: w * 0.95,
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TOTAL : ",
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
                      "Grand Total :",
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
                          "Confirm Payment",
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
        ],
      ),
    );
  }
}
