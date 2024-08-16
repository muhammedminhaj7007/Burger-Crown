import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:burger_crown/Const/ImageConst.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Const/colorConst.dart';
import '../../../main.dart';
import '../../bottomnavigation/screens/bottomNavigation.dart';

class productPage extends StatefulWidget {
  const productPage({super.key});

  @override
  State<productPage> createState() => _productPageState();
}

class _productPageState extends State<productPage> {
  double _rating = 2.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConst.primaryConst,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(CupertinoIcons.back)),
      ),
      body: Padding(
        padding:  EdgeInsets.all(w*0.09),
        child: Column(
          children: [
            Container(
              height: h * 0.25,
              width: w * 0.8,
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTQSlErmF8aue6QzN17D8bqS9nN9pH_RTmuA&s",
              ),
              decoration: BoxDecoration(
                  color: ColorConst.white,
                  borderRadius: BorderRadius.circular(w * 0.09),
                  border: Border.all(color: ColorConst.primaryConst)),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Container(
                height: h * 0.08,
                width: w * 0.7,
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Beef Burger",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: w * 0.05),
                        ),
                        Text(
                          "cheesy Mozarella",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: w * 0.04),
                        ),
                      ],
                    ),
                    Text(
                      "Rs.₹150",
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: w * 0.05),
                    ),
                  ],
                )),
            Container(
              height: h * 0.08,
              width: w * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: h * 0.06,
                    width: w * 0.35,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Rating: $_rating',
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w900),
                        ),
                        AnimatedRatingStars(
                          initialRating: 2.5,
                          onChanged: (rating) {
                            setState(() {
                              _rating = rating;
                            });
                          },
                          displayRatingValue: true, // Display the rating value
                          interactiveTooltips:
                              true, // Allow toggling half-star state
                          customFilledIcon: Icons.star,
                          customHalfFilledIcon: Icons.star_half,
                          customEmptyIcon: Icons.star_border,
                          starSize: 17.0,
                          animationDuration: const Duration(milliseconds: 500),
                          animationCurve: Curves.easeInOut,
                          emptyColor: ColorConst.black,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        ImageConst.fire,
                        width: w * 0.04,
                      ),
                      Text(
                        "150 Kcal",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: w * 0.05),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: w * 0.01,
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            Container(
                height: h * 0.09,
                width: w * 0.7,
                child: Text(
                  "This beef burger uses 100% quality beef with \nsliced tomatoces ,cucumber ,vegetables\nand onions",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: w * 0.04),
                )),
            SizedBox(
              height: h * 0.09,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => bottomNavigationBar(),));
              },
              child: Container(
                height: h * 0.06,
                width: w * 0.7,
                decoration: BoxDecoration(
                  color: ColorConst. primaryConst,
                  borderRadius: BorderRadius.circular(w * 0.1),
                ),
                child: Center(
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(
                          fontSize: w * 0.05,
                          fontWeight: FontWeight.w900,
                          color:ColorConst. white),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
