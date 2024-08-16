import 'package:burger_crown/Const/colorConst.dart';
import 'package:burger_crown/Feature/payment/screens/paymentPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class orderPage extends StatefulWidget {
  const orderPage({super.key});

  @override
  State<orderPage> createState() => _orderPageState();
}

class _orderPageState extends State<orderPage> {
  List b = [
    {
      "img":
          "https://static.vecteezy.com/system/resources/thumbnails/034/763/836/small_2x/ai-generated-fried-chicken-burger-free-png.png",
      "test": "chicken burger",
      "test1": "Rs.₹150"
    },
    {
      "img":
          "https://freepngimg.com/save/159187-burger-double-cheese-free-png-hq/700x487",
      "test": "Double Cheesy \n Burger",
      "test1": "Rs.₹269"
    },
    {
      "img":
          "https://e7.pngegg.com/pngimages/998/49/png-clipart-domino-s-pizza-veggie-burger-garlic-bread-restaurant-non-veg-food-food-recipe-thumbnail.png",
      "test": "Veg Pizza",
      "test1": "Rs.₹129"
    },
    {
      "img":
          "https://www.pngitem.com/pimgs/m/529-5293818_chicken-tikka-pizza-png-transparent-png.png",
      "test": "chicken tikka \n pizza",
      "test1": "Rs.₹239"
    },
  ];
  List drop = [
    "Kerala",
    "Tamil Nadu",
    "Karnataka",
  ];
  List<DropdownMenuItem> item = [
    DropdownMenuItem(value: "Kerala", child: Text("Kerala")),
    DropdownMenuItem(value: "Tamil Nadu", child: Text("Tamil Nadu")),
    DropdownMenuItem(value: "karnataka", child: Text("Karnataka"))
  ];
  String? DropDownvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConst.primaryConst,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(CupertinoIcons.back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: h * 0.01,
            ),
            Container(
              height: h * 0.20,
              width: w * 09,
              child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: h * 0.02,
                      width: w * 0.42,
                      decoration: BoxDecoration(
                        color: ColorConst.white,
                        borderRadius: BorderRadius.circular(w * 0.03),
                        boxShadow: [
                          BoxShadow(
                            blurStyle: BlurStyle.normal,
                            color: Colors.black.withOpacity(0.10),
                            offset: Offset(0, 4),
                            spreadRadius: 2,
                            blurRadius: 9,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: h * 0.11,
                            width: w * 0.3,
                            child: Image.network(
                              b[index]["img"],
                            ),
                          ),
                          SizedBox(
                            height: w * 0.001,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: w * 0.03,
                                  ),
                                  Text(
                                    b[index]["test"],
                                    style: TextStyle(
                                        fontSize: w * 0.035,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: h * 0.015,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: w * 0.03,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        b[index]["test1"],
                                        style: TextStyle(
                                            fontSize: w * 0.05,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: w * 0.02,
                    );
                  },
                  itemCount: b.length),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            Container(
              height: h * 0.6,
              // color: Colorconst.redConst,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: h * 0.055,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                        color: ColorConst.white,
                        border: Border.all(color: ColorConst.primaryConst),
                        borderRadius: BorderRadius.circular(w * 0.03)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          labelText: "Name",
                          labelStyle: TextStyle(
                              color: ColorConst.primaryConst,
                              fontSize: w * 0.04)),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      cursorColor: ColorConst.primaryConst,
                    ),
                  ),
                  SizedBox(
                    height: h * 0.006,
                  ),
                  Container(
                      height: h * 0.055,
                      width: w * 0.9,
                      decoration: BoxDecoration(
                          color: ColorConst.white,
                          border: Border.all(color: ColorConst.primaryConst),
                          borderRadius: BorderRadius.circular(w * 0.03)),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          DropdownButton(
                            underline: SizedBox(),
                            value: DropDownvalue,
                            items: drop.map((e) {
                              return DropdownMenuItem(value: e, child: Text(e));
                            }).toList(),
                            icon: Padding(
                              padding: EdgeInsets.only(left: w * 0.63),
                              child: Icon(Icons.arrow_drop_down),
                            ),
                            style: TextStyle(color: ColorConst.primaryConst),
                            hint: Padding(
                              padding: EdgeInsets.only(
                                right: w * 0.07,
                              ),
                              child: Text(
                                "State",
                                style: TextStyle(
                                    color: ColorConst.primaryConst,
                                    fontSize: w * 0.04),
                              ),
                            ),
                            onChanged: (value) {
                              DropDownvalue = value.toString();
                              setState(() {});
                            },
                          ),
                        ],
                      )),
                  SizedBox(
                    height: h * 0.006,
                  ),
                  Container(
                    height: h * 0.055,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                        color: ColorConst.white,
                        border: Border.all(color: ColorConst.primaryConst),
                        borderRadius: BorderRadius.circular(w * 0.03)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          labelText: "Flat ,House NO ,Building ,Apartment",
                          labelStyle: TextStyle(
                              color: ColorConst.primaryConst,
                              fontSize: w * 0.04)),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      cursorColor: ColorConst.primaryConst,
                    ),
                  ),
                  SizedBox(
                    height: h * 0.006,
                  ),
                  Container(
                    height: h * 0.055,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConst.primaryConst),
                        color: ColorConst.white,
                        borderRadius: BorderRadius.circular(w * 0.03)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          labelText: "Area ,Street ,Sector ,Village",
                          labelStyle: TextStyle(
                              color: ColorConst.primaryConst,
                              fontSize: w * 0.04)),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      cursorColor: ColorConst.primaryConst,
                    ),
                  ),
                  SizedBox(
                    height: h * 0.006,
                  ),
                  Container(
                    height: h * 0.055,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConst.primaryConst),
                        color: ColorConst.white,
                        borderRadius: BorderRadius.circular(w * 0.03)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          labelText: "Land Mark",
                          labelStyle: TextStyle(
                              color: ColorConst.primaryConst,
                              fontSize: w * 0.04)),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      cursorColor: ColorConst.primaryConst,
                    ),
                  ),
                  SizedBox(
                    height: h * 0.006,
                  ),
                  Container(
                    height: h * 0.055,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConst.primaryConst),
                        color: ColorConst.white,
                        borderRadius: BorderRadius.circular(w * 0.03)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          labelText: "Pin Code",
                          labelStyle: TextStyle(
                              color: ColorConst.primaryConst,
                              fontSize: w * 0.04)),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      cursorColor: ColorConst.primaryConst,
                    ),
                  ),
                  SizedBox(
                    height: h * 0.006,
                  ),
                  Container(
                    height: h * 0.055,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                        color: ColorConst.white,
                        border: Border.all(color: ColorConst.primaryConst),
                        borderRadius: BorderRadius.circular(w * 0.03)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          labelText: "Town / City",
                          labelStyle: TextStyle(
                              color: ColorConst.primaryConst,
                              fontSize: w * 0.04)),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      cursorColor: ColorConst.primaryConst,
                    ),
                  ),
                  SizedBox(
                    height: h * 0.006,
                  ),
                  Container(
                    height: h * 0.055,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConst.primaryConst),
                        color: ColorConst.white,
                        borderRadius: BorderRadius.circular(w * 0.03)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorConst.lightyellow),
                              borderRadius: BorderRadius.circular(w * 0.03)),
                          labelText: "Phone Number",
                          labelStyle: TextStyle(
                              color: ColorConst.primaryConst,
                              fontSize: w * 0.04)),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      cursorColor: ColorConst.primaryConst,
                    ),
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, CupertinoPageRoute(builder: (context) => paymentPage(),));
                    },
                    child: Container(
                      height: h * 0.06,
                      width: w * 0.7,
                      decoration: BoxDecoration(
                        color: ColorConst.primaryConst,
                        borderRadius: BorderRadius.circular(w * 0.1),
                      ),
                      child: Center(
                          child: Text(
                        "Next",
                        style: TextStyle(
                            fontSize: w * 0.05,
                            fontWeight: FontWeight.w900,
                            color: ColorConst.white),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
