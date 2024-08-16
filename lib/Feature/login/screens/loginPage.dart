import 'package:burger_crown/Const/ImageConst.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../Const/colorConst.dart';
import '../../../main.dart';
import '../../bottomnavigation/screens/bottomNavigation.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

bool a = false;

final GoogleSignIn googleSignIn = GoogleSignIn();
final FirebaseAuth _auth = FirebaseAuth.instance;


googleSignInFunction(BuildContext context) async {

  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  var userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

  User? user= userCredential.user;

  print(user!.email);
  print(user!.displayName);
  print(user!.photoURL);

  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => bottomNavigationBar(),));

}
Future<User?> _handleSignIn() async {
  try {
    GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
    await googleSignInAccount!.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    UserCredential authResult = await _auth.signInWithCredential(credential);
    User? user = authResult.user;

    return user;
  } catch (error) {
    print(error);
    return null;
  }
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConst.primaryConst,
        toolbarHeight: h * 0.22,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(w * 0.4),
              bottomRight: Radius.circular(w * 0.4)),
        ),
        title: Center(
            child: Container(
          height: h * 0.42,
          width: w * 0.6,
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                      width: w * 0.6,
                      child: Image(
                        image: AssetImage(ImageConst.foodimg),
                        width: w * 0.50,
                      )),
                  Positioned(
                    top: w * 0.01,
                    left: w * 0.01,
                    child: Image(
                      image: AssetImage(ImageConst.logo),
                      width: w * 0.78,
                    ),
                  )
                ],
              )
            ],
          ),
        )),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: h * 0.02,
            ),
            Container(
              height: h * 0.50,
              width: w * 0.78,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(w * 0.05),
                  border: Border.all(color: ColorConst.black)),
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.04,
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          a = !a;
                          setState(() {});
                        },
                        child: Container(
                          height: h * 0.041,
                          width: w * 0.48,
                          decoration: BoxDecoration(
                              color: ColorConst.lightyellow,
                              borderRadius: BorderRadius.circular(w * 0.04),
                              border:
                                  Border.all(color: ColorConst.primaryConst)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Log In",
                                style: TextStyle(
                                    fontSize: w * 0.035,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: w * 0.07,
                              ),
                              Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: w * 0.035,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        left: a == true ? w * 0.2 : w * 0.0,
                        duration: Duration(milliseconds: 200),
                        child: InkWell(
                          onTap: () {
                            a = !a;
                            setState(() {});
                          },
                          child: AnimatedContainer(
                            duration: Duration(microseconds: 200),
                            height: w * 0.09,
                            width: w * 0.28,
                            decoration: BoxDecoration(
                                color: ColorConst.primaryConst,
                                borderRadius: BorderRadius.circular(w * 0.04)),
                            child: Center(
                                child: AnimatedPositioned(
                              duration: Duration(milliseconds: 200),
                              left: a == true ? 8 : w * 0.65,
                              top: 10,
                              child: InkWell(
                                onTap: () {
                                  a = !a;
                                  setState(() {});
                                },
                                child: Text(
                                  a == false ? "Log In" : "Sign Up",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: w * 0.038,
                                      color: a == true
                                          ? ColorConst.white
                                          : ColorConst.white),
                                ),
                              ),
                            )),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  a == false ? Column(
                          children: [
                            Container(
                              width: w * 0.68,
                              // color: Colors.red,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                cursorColor: ColorConst.black,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                                decoration: InputDecoration(
                                    labelText: "Enter email or username",
                                    labelStyle: TextStyle(
                                      fontSize: 14,
                                      color: ColorConst.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    enabledBorder: UnderlineInputBorder(),
                                    focusedBorder: UnderlineInputBorder()),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Container(
                              width: w * 0.68,
                              // color: Colors.red,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                cursorColor: ColorConst.black,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                                decoration: InputDecoration(
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                      fontSize: 14,
                                      color: ColorConst.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    enabledBorder: UnderlineInputBorder(),
                                    focusedBorder: UnderlineInputBorder()),
                              ),
                            ),
                            SizedBox(
                              height: w * 0.009,
                            ),
                            SizedBox(
                              height: w * 0.12,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) => bottomNavigationBar(),
                                    ));
                              },
                              child: Container(
                                height: h * 0.045,
                                width: w * 0.35,
                                decoration: BoxDecoration(
                                    color: ColorConst.primaryConst,
                                    borderRadius:
                                        BorderRadius.circular(w * 0.05)),
                                child: Center(
                                    child: Text(
                                  "Log In",
                                  style: TextStyle(
                                      color: ColorConst.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: w * 0.035),
                                )),
                              ),
                            ),
                            SizedBox(
                              height: w * 0.06,
                            ),
                            Container(
                              height: h * 0.03,
                              width: w * 0.8,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      color: Colors.black,
                                      indent: w * 0.13,
                                      endIndent: w * 0.03,
                                    ),
                                  ),
                                  Text("OR"),
                                  Expanded(
                                    child: Divider(
                                      color: Colors.black,
                                      indent: w * 0.03,
                                      endIndent: w * 0.13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: w * 0.03,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Sign with Google",
                                  style: TextStyle(
                                      fontSize: w * 0.036,
                                      fontWeight: FontWeight.w600,
                                      color: ColorConst.secondaryConst),
                                ),
                                SizedBox(
                                  width: w * 0.04,
                                ),
                                Text(
                                  "|",
                                  style: TextStyle(
                                      fontSize: w * 0.06,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  width: w * 0.05,
                                ),
                                InkWell(
                                  onTap: () {
                                    googleSignInFunction(context);
                                  },
                                  child: Container(
                                      child: SvgPicture.asset(ImageConst.google)),
                                )
                              ],
                            )
                          ],
                        ) : Column(
                          children: [
                            Container(
                              width: w * 0.68,
                              // color: Colors.red,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                cursorColor: ColorConst.black,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                                decoration: InputDecoration(
                                    labelText: "Enter email or username",
                                    labelStyle: TextStyle(
                                      fontSize: 14,
                                      color: ColorConst.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    enabledBorder: UnderlineInputBorder(),
                                    focusedBorder: UnderlineInputBorder()),
                              ),
                            ),
                            SizedBox(
                              height: w * 0.01,
                            ),
                            Container(
                              width: w * 0.68,
                              // color: Colors.red,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                cursorColor: ColorConst.black,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                                decoration: InputDecoration(
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                      fontSize: 14,
                                      color: ColorConst.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    enabledBorder: UnderlineInputBorder(),
                                    focusedBorder: UnderlineInputBorder()),
                              ),
                            ),
                            SizedBox(
                              height: w * 0.01,
                            ),
                            Container(
                              width: w * 0.68,
                              // color: Colors.red,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                cursorColor: ColorConst.black,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                                decoration: InputDecoration(
                                    labelText: "Confirm Password",
                                    labelStyle: TextStyle(
                                      fontSize: 14,
                                      color: ColorConst.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    enabledBorder: UnderlineInputBorder(),
                                    focusedBorder: UnderlineInputBorder()),
                              ),
                            ),
                            SizedBox(
                              height: w * 0.06,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) => bottomNavigationBar(),
                                    ));
                              },
                              child: Container(
                                height: h * 0.045,
                                width: w * 0.35,
                                decoration: BoxDecoration( 
                                    color: ColorConst.primaryConst,
                                    borderRadius:
                                        BorderRadius.circular(w * 0.05)),
                                child: Center(
                                    child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      color: ColorConst.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: w * 0.035),
                                )),
                              ),
                            ),
                            SizedBox(
                              height: w * 0.06,
                            ),
                            Container(
                              height: h * 0.03,
                              width: w * 0.8,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      color: Colors.black,
                                      indent: w * 0.13,
                                      endIndent: w * 0.03,
                                    ),
                                  ),
                                  Text("OR"),
                                  Expanded(
                                    child: Divider(
                                      color: Colors.black,
                                      indent: w * 0.03,
                                      endIndent: w * 0.13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: w * 0.03,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Sign with Google",
                                  style: TextStyle(
                                      fontSize: w * 0.036,
                                      fontWeight: FontWeight.w600,
                                      color: ColorConst.secondaryConst),
                                ),
                                SizedBox(
                                  width: w * 0.04,
                                ),
                                Text(
                                  "|",
                                  style: TextStyle(
                                      fontSize: w * 0.06,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  width: w * 0.05,
                                ),
                                InkWell(
                                  onTap:  () {
                                    googleSignInFunction(context);
                                  },
                                  child: Container(
                                      child: SvgPicture.asset(ImageConst.google)),
                                )
                              ],
                            )
                          ],
                        ),
                ],
              ),
            ),
            Container(
              height: h * 0.31,
              width: w * 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage(ImageConst.pizza),
                    width: w * 0.55,
                    height: h * 0.62,
                  ),
                  Image(image: AssetImage(ImageConst.burger), width: w * 0.27),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
