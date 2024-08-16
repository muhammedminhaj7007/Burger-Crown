import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:burger_crown/Feature/product/screens/productPage.dart';
import 'package:burger_crown/Feature/profile/screens/profilPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Const/ImageConst.dart';
import '../../../Const/colorConst.dart';
import '../../../main.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

List a = [
  {"food": ImageConst.bug, "test": "Burgers"},
  {"food": ImageConst.pizza1, "test": "Pizza"},
  {"food": ImageConst.drinks, "test": "Drinks"}
];
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
];
List c = [
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
List d = [
  {
    "img":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvBXd5bNNCyhfbgTr-Leu69l25Yj_9a7Xnag&s",
    "test": "Coca Cola",
    "test1": "Rs.₹79"
  },
  {
    "img":
        "https://atlas-content-cdn.pixelsquid.com/stock-images/beverage-can-7up-330ml-soda-Odd2xWD-600.jpg",
    "test": "7Up  330ml",
    "test1": "Rs.₹119"
  },
];

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConst.white,
        appBar: AppBar(
          leading: Row(
            children: [
              SizedBox(
                width: w * 0.03,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: SvgPicture.asset(
                  ImageConst.threeLine,
                  fit: BoxFit.fill,
                  height: h * 0.04,
                  width: 0.07,
                ),
              ),
            ],
          ),
          actions: [
            Row(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => profilPage()));
                    },
                    child: CircleAvatar(
                      radius: w * 0.06,
                      backgroundImage: AssetImage(ImageConst.man),
                    ),
                  ),
                ),
                SizedBox(
                  width: w * 0.03,
                ),
              ],
            ),
          ],
          title: Column(
            children: [
              Container(
                height: h * 0.08,
                width: w * 0.7,
                child: Text(
                  "Choose  the \n FOOD  you  LOVE",
                  style: GoogleFonts.acme(
                      textStyle: TextStyle(),
                      fontWeight: FontWeight.w700,
                      color: ColorConst.white,
                      fontSize: w * 0.07),
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                height: h * 0.05,
                width: w * 0.9,
                decoration: BoxDecoration(
                    color: ColorConst.lightyellow,
                    borderRadius: BorderRadius.circular(w * 0.05),
                    border: Border.all(color: ColorConst.white)),
                child: Center(
                    child: Row(
                  children: [
                    SizedBox(
                      width: w * 0.03,
                    ),
                    Text(
                      "Search for a food item",
                      style: TextStyle(
                        fontSize: w * 0.05,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                )),
              ),
            ],
          ),
          backgroundColor: ColorConst.primaryConst,
          toolbarHeight: h * 0.23,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(w * 0.38),
                bottomRight: Radius.circular(w * 0.38)),
          ),
        ),
        body: Center(
          child: Container(
            height: h * 0.60,
            width: w * 0.9,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(ImageConst.dinner)),
            ),
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: h * 0.04,
                    width: w * 0.8,
                    child: Text(
                      "Categories",
                      style: GoogleFonts.acme(
                          textStyle: TextStyle(),
                          fontWeight: FontWeight.w700,
                          color: ColorConst.black,
                          fontSize: w * 0.07),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Container(
                    height: h * 0.15,
                    width: w * 2,
                    color: ColorConst.white,
                    child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              SizedBox(
                                height: h * 0.01,
                              ),
                              Container(
                                height: h * 0.10,
                                width: w * 0.3,
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
                                child: Align(
                                    alignment: Alignment.center,
                                    child: SvgPicture.asset(
                                      a[index]["food"],
                                      width: w * 0.12,
                                      height: w * 0.12,
                                    )),
                              ),
                              SizedBox(
                                height: w * 0.02,
                              ),
                              Text(
                                a[index]["test"],
                                style: TextStyle(
                                    fontSize: w * 0.035,
                                    fontWeight: FontWeight.w900),
                              )
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: w * 0.02,
                          );
                        },
                        itemCount: a.length),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Container(
                    height: h * 0.6,
                    width: w * 1,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: w * 0.05,
                            ),
                            Text(
                              "Burgers",
                              style: GoogleFonts.acme(
                                  textStyle: TextStyle(),
                                  fontWeight: FontWeight.w700,
                                  color: ColorConst.black,
                                  fontSize: w * 0.07),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.all(w * 0.03),
                          child: Container(
                            height: h * 0.25,
                            width: w * 2,
                            child: ListView.separated(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                            builder: (context) => productPage(),
                                          ));
                                    },
                                    child: Container(
                                      height: h * 0.12,
                                      width: w * 0.42,
                                      decoration: BoxDecoration(
                                        color: ColorConst.white,
                                        borderRadius:
                                            BorderRadius.circular(w * 0.03),
                                        boxShadow: [
                                          BoxShadow(
                                            blurStyle: BlurStyle.normal,
                                            color:
                                                Colors.black.withOpacity(0.10),
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
                                                        fontWeight:
                                                            FontWeight.w900),
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
                                                            fontWeight:
                                                                FontWeight
                                                                    .w900),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
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
                        ),
                        // Container(
                        //   height: h*0.6,
                        //   width: w*1,
                        //   color: Colors.red,
                        //   child: Column(
                        //     children: [
                        //       Row(
                        //         children: [
                        //           SizedBox(
                        //             width: w*0.05,
                        //           ),
                        //           Text(
                        //             "Pizza",
                        //             style: GoogleFonts.acme(
                        //                 textStyle: TextStyle(),
                        //                 fontWeight: FontWeight.w700,
                        //                 color: ColorConst.black,
                        //                 fontSize: w * 0.07),
                        //           ),
                        //         ],
                        //       ),
                        //       SizedBox(
                        //         height: h*0.02,
                        //       ),
                        //       Padding(
                        //         padding:  EdgeInsets.all(w*0.03),
                        //         child: Container(
                        //           height: h * 0.25,
                        //           width: w * 2,
                        //           child: ListView.separated(
                        //               physics: BouncingScrollPhysics(),
                        //               scrollDirection: Axis.horizontal,
                        //               shrinkWrap: true,
                        //               itemBuilder: (context, index) {
                        //                 return Container(
                        //                   height: h * 0.12,
                        //                   width: w * 0.42,
                        //                   decoration: BoxDecoration(
                        //                     // color: Color(0xff797878),
                        //                     color: ColorConst.white,
                        //                     borderRadius: BorderRadius.circular(w * 0.03),
                        //                     boxShadow: [
                        //                       BoxShadow(
                        //                         blurStyle: BlurStyle.normal,
                        //                         color: Colors.black.withOpacity(0.10),
                        //                         offset: Offset(0, 4),
                        //                         spreadRadius: 2,
                        //                         blurRadius: 9,
                        //                       )
                        //                     ],
                        //                   ),
                        //                   child: Column(
                        //                     children: [
                        //                       Container(
                        //                         height: h*0.11,
                        //                         width: w*0.3,
                        //                         child: Image.network(
                        //                           c[index]["img"],
                        //                         ),
                        //                       ),
                        //                       SizedBox(
                        //                         height: w*0.001,
                        //                       ),
                        //                       Column(
                        //                         children: [
                        //                           Row(
                        //                             children: [
                        //                               SizedBox(
                        //                                 width: w*0.03,
                        //                               ),
                        //                               Text(c[index]["test"],style: TextStyle(
                        //                                   fontSize: w*0.035,
                        //                                   fontWeight: FontWeight.w900
                        //                               ),
                        //                               ),
                        //                             ],
                        //                           ),
                        //                           Padding(
                        //                             padding:  EdgeInsets.only(right:  w*0.1),
                        //                             child: Container(
                        //                               height: h*0.05,
                        //                               width: w*0.32,
                        //                               child: Column(
                        //                                 mainAxisAlignment: MainAxisAlignment.start,
                        //                                 children: [
                        //                                   Text(
                        //                                     'Rating: $_rating',
                        //                                     style: const TextStyle( fontSize: 15,
                        //                                         fontWeight: FontWeight.w900),
                        //                                   ),
                        //                                   AnimatedRatingStars(
                        //                                     initialRating: 2.5,
                        //                                     onChanged: (rating) {
                        //                                       setState(() {
                        //                                         _rating = rating;
                        //                                       });
                        //                                     },
                        //                                     displayRatingValue: true, // Display the rating value
                        //                                     interactiveTooltips: true, // Allow toggling half-star state
                        //                                     customFilledIcon: Icons.star,
                        //                                     customHalfFilledIcon: Icons.star_half,
                        //                                     customEmptyIcon: Icons.star_border,
                        //                                     starSize: 17.0,
                        //                                     animationDuration: const Duration(milliseconds: 500),
                        //                                     animationCurve: Curves.easeInOut,
                        //                                     emptyColor: ColorConst.black,
                        //
                        //                                   ),
                        //                                 ],
                        //                               ),
                        //                             ),
                        //                           ),
                        //                           SizedBox(
                        //                             height: h*0.015,
                        //                           ),
                        //                           Row(
                        //                             children: [
                        //                               SizedBox(width: w*0.03,),
                        //                               Column(
                        //                                 children: [
                        //                                   Text(c[index]["test1"],style: TextStyle(
                        //                                       fontSize: w*0.05,
                        //                                       fontWeight: FontWeight.w900
                        //                                   ),
                        //                                   ),
                        //                                 ],
                        //                               ),
                        //                             ],
                        //                           )
                        //                         ],
                        //                       )
                        //                     ],
                        //                   ),
                        //                 );
                        //               },
                        //               separatorBuilder: (context, index) {
                        //                 return SizedBox(
                        //                   width: w * 0.02,
                        //                 );
                        //               },
                        //               itemCount: c.length),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Container(
                        //   height: h*0.6,
                        //   width: w*1,
                        //   color: Colors.red,
                        //   child: Column(
                        //     children: [
                        //       Row(
                        //         children: [
                        //           SizedBox(
                        //             width: w*0.05,
                        //           ),
                        //           Text(
                        //             "Soft Drinks",
                        //             style: GoogleFonts.acme(
                        //                 textStyle: TextStyle(),
                        //                 fontWeight: FontWeight.w700,
                        //                 color: ColorConst.black,
                        //                 fontSize: w * 0.07),
                        //           ),
                        //         ],
                        //       ),
                        //       SizedBox(
                        //         height: h*0.02,
                        //       ),
                        //       Padding(
                        //         padding:  EdgeInsets.all(w*0.03),
                        //         child: Container(
                        //           height: h * 0.25,
                        //           width: w * 2,
                        //           child: ListView.separated(
                        //               physics: BouncingScrollPhysics(),
                        //               scrollDirection: Axis.horizontal,
                        //               shrinkWrap: true,
                        //               itemBuilder: (context, index) {
                        //                 return Container(
                        //                   height: h * 0.12,
                        //                   width: w * 0.42,
                        //                   decoration: BoxDecoration(
                        //                     // color: Color(0xff797878),
                        //                     color: ColorConst.white,
                        //                     borderRadius: BorderRadius.circular(w * 0.03),
                        //                     boxShadow: [
                        //                       BoxShadow(
                        //                         blurStyle: BlurStyle.normal,
                        //                         color: Colors.black.withOpacity(0.10),
                        //                         offset: Offset(0, 4),
                        //                         spreadRadius: 2,
                        //                         blurRadius: 9,
                        //                       )
                        //                     ],
                        //                   ),
                        //                   child: Column(
                        //                     children: [
                        //                       Container(
                        //                         height: h*0.11,
                        //                         width: w*0.3,
                        //                         child: Image.network(
                        //                           d[index]["img"],
                        //                         ),
                        //                       ),
                        //                       SizedBox(
                        //                         height: w*0.001,
                        //                       ),
                        //                       Column(
                        //                         children: [
                        //                           Row(
                        //                             children: [
                        //                               SizedBox(
                        //                                 width: w*0.03,
                        //                               ),
                        //                               Text(d[index]["test"],style: TextStyle(
                        //                                   fontSize: w*0.035,
                        //                                   fontWeight: FontWeight.w900
                        //                               ),
                        //                               ),
                        //                             ],
                        //                           ),
                        //                           Padding(
                        //                             padding:  EdgeInsets.only(right:  w*0.1),
                        //                             child: Container(
                        //                               height: h*0.05,
                        //                               width: w*0.32,
                        //                               child: Column(
                        //                                 mainAxisAlignment: MainAxisAlignment.start,
                        //                                 children: [
                        //                                   Text(
                        //                                     'Rating: $_rating',
                        //                                     style: const TextStyle( fontSize: 15,
                        //                                         fontWeight: FontWeight.w900),
                        //                                   ),
                        //                                   AnimatedRatingStars(
                        //                                     initialRating: 2.5,
                        //                                     onChanged: (rating) {
                        //                                       setState(() {
                        //                                         _rating = rating;
                        //                                       });
                        //                                     },
                        //                                     displayRatingValue: true, // Display the rating value
                        //                                     interactiveTooltips: true, // Allow toggling half-star state
                        //                                     customFilledIcon: Icons.star,
                        //                                     customHalfFilledIcon: Icons.star_half,
                        //                                     customEmptyIcon: Icons.star_border,
                        //                                     starSize: 17.0,
                        //                                     animationDuration: const Duration(milliseconds: 500),
                        //                                     animationCurve: Curves.easeInOut,
                        //                                     emptyColor: ColorConst.black,
                        //
                        //                                   ),
                        //                                 ],
                        //                               ),
                        //                             ),
                        //                           ),
                        //                           SizedBox(
                        //                             height: h*0.015,
                        //                           ),
                        //                           Row(
                        //                             children: [
                        //                               SizedBox(width: w*0.03,),
                        //                               Column(
                        //                                 children: [
                        //                                   Text(d[index]["test1"],style: TextStyle(
                        //                                       fontSize: w*0.05,
                        //                                       fontWeight: FontWeight.w900
                        //                                   ),
                        //                                   ),
                        //                                 ],
                        //                               ),
                        //                             ],
                        //                           )
                        //                         ],
                        //                       )
                        //                     ],
                        //                   ),
                        //                 );
                        //               },
                        //               separatorBuilder: (context, index) {
                        //                 return SizedBox(
                        //                   width: w * 0.02,
                        //                 );
                        //               },
                        //               itemCount: d.length),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
