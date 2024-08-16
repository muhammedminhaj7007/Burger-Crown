import 'package:burger_crown/Const/ImageConst.dart';
import 'package:burger_crown/Const/colorConst.dart';
import 'package:burger_crown/Feature/userchange/screens/userChangeDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class profilPage extends StatefulWidget {
  const profilPage({super.key});

  @override
  State<profilPage> createState() => _profilPageState();
}

class _profilPageState extends State<profilPage> {
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
      body: Column(children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [ColorConst.primaryConst, ColorConst.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: w * 0.05, right: w * 0.05, top: w * 0.1),
                child: SizedBox(
                  height: h * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: w * 0.12,
                                backgroundColor: ColorConst.white,
                                child: CircleAvatar(
                                  radius: w * 0.10,
                                  backgroundImage: AssetImage(ImageConst.man),
                                ),
                              ),
                              Positioned(
                                top: w * 0.155,
                                left: w * 0.175,
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: ColorConst.white,
                                      radius: w * 0.03,
                                      child: CircleAvatar(
                                        backgroundColor:
                                            ColorConst.secondaryConst,
                                        radius: w * 0.025,
                                        child: Icon(Icons.add,
                                            size: w * 0.05,
                                            color: ColorConst.white),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: ColorConst.black,
                      ),
                      Row(
                        children: [
                          Icon(Icons.email),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text(
                            "Muhammedminhaj7007@gmail.com",
                            style: TextStyle(
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text(
                            "+91 8593807999",
                            style: TextStyle(
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(CupertinoIcons.location_solid),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text(
                            "Nilambur",
                            style: TextStyle(
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: h * 0.08,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => userChange_details(),
                ));
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
              "Change Details",
              style: TextStyle(
                  fontSize: w * 0.05,
                  fontWeight: FontWeight.w900,
                  color: ColorConst.white),
            )),
          ),
        )
      ]),
    );
  }
}
