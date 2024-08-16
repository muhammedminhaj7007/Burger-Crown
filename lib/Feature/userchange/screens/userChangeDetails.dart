import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Const/ImageConst.dart';
import '../../../Const/colorConst.dart';
import '../../../main.dart';

class userChange_details extends StatefulWidget {
  const userChange_details({super.key});

  @override
  State<userChange_details> createState() => _userChange_detailsState();
}

class _userChange_detailsState extends State<userChange_details> {
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
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(w*0.05),
              child: Container(
                height: h*0.6,
                width: w*0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: w * 0.12,
                          backgroundColor: ColorConst.white,
                          child:CircleAvatar(
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
                    SizedBox(
                      height: h*0.02,
                    ),
                    Container(
                      height: h*0.3,
                      // color: Colorconst.redConst,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height:h*0.055,
                            width: w*0.9,
                            decoration: BoxDecoration(
                                color: ColorConst.white,
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:ColorConst.primaryConst
                                      ),
                                      borderRadius: BorderRadius.circular(w*0.03)
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:ColorConst.primaryConst
                                      ),
                                      borderRadius: BorderRadius.circular(w*0.03)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:ColorConst.primaryConst
                                      ),
                                      borderRadius: BorderRadius.circular(w*0.03)
                                  ),
                                  labelText: "Name",
                                  labelStyle: TextStyle(
                                      color: ColorConst.primaryConst,
                                      fontSize: w*0.04
                                  )
                              ),
                              textInputAction:TextInputAction.next,
                              keyboardType: TextInputType.name,
                              cursorColor:ColorConst.primaryConst,
                            ),
                          ),
                          Container(
                            height:h*0.055,
                            width: w*0.9,
                            decoration: BoxDecoration(
                                color: ColorConst.white,
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:ColorConst.primaryConst
                                      ),
                                      borderRadius: BorderRadius.circular(w*0.03)
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:ColorConst.primaryConst
                                      ),
                                      borderRadius: BorderRadius.circular(w*0.03)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:ColorConst.primaryConst
                                      ),
                                      borderRadius: BorderRadius.circular(w*0.03)
                                  ),
                                  labelText: "email",
                                  labelStyle: TextStyle(
                                      color: ColorConst.primaryConst,
                                      fontSize: w*0.04
                                  )
                              ),
                              textInputAction:TextInputAction.next,
                              keyboardType: TextInputType.emailAddress,
                              cursorColor:ColorConst.primaryConst,
                            ),
                          ),
                          Container(
                            height:h*0.055,
                            width: w*0.9,
                            decoration: BoxDecoration(
                                color:ColorConst.white,
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorConst.primaryConst
                                      ),
                                      borderRadius: BorderRadius.circular(w*0.03)
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorConst.primaryConst
                                      ),
                                      borderRadius: BorderRadius.circular(w*0.03)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:ColorConst.primaryConst
                                      ),
                                      borderRadius: BorderRadius.circular(w*0.03)
                                  ),
                                  labelText: "Phone number",
                                  labelStyle: TextStyle(
                                      color: ColorConst.primaryConst,
                                      fontSize: w*0.04
                                  )
                              ),
                              textInputAction:TextInputAction.next,
                              keyboardType: TextInputType.number,
                              cursorColor:ColorConst.primaryConst,
                            ),
                          ),
                          Container(
                            height:h*0.055,
                            width: w*0.9,
                            decoration: BoxDecoration(
                                color:ColorConst.white,
                                borderRadius: BorderRadius.circular(w*0.03)
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:ColorConst.primaryConst
                                      ),
                                      borderRadius: BorderRadius.circular(w*0.03)
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:ColorConst.primaryConst
                                      ),
                                      borderRadius: BorderRadius.circular(w*0.03)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:ColorConst.primaryConst
                                      ),
                                      borderRadius: BorderRadius.circular(w*0.03)
                                  ),
                                  labelText: "Place",
                                  labelStyle: TextStyle(
                                      color: ColorConst.primaryConst,
                                      fontSize: w*0.04
                                  )
                              ),
                              textInputAction:TextInputAction.next,
                              keyboardType: TextInputType.name,
                              cursorColor: ColorConst.primaryConst,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: h*0.02,),
                    Container(
                      height: h * 0.06,
                      width: w * 0.4,
                      decoration: BoxDecoration(
                        color: ColorConst.primaryConst,
                        borderRadius: BorderRadius.circular(w * 0.1),
                      ),
                      child: Center(
                          child: Text(
                            "Save",
                            style: TextStyle(
                                fontSize: w * 0.05,
                                fontWeight: FontWeight.w900,
                                color: ColorConst.white),
                          )),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
