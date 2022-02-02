import 'dart:io';

import 'package:flutter/material.dart';
import 'components/button_transparent_main.dart';
import '../util/value/constant_colors.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController loginController;

  @override
  void initState() {
    loginController = LoginController(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: ConstColors.colorTerraCota,
          gradient: LinearGradient(
            colors: [
              ConstColors.colorBlush,
              ConstColors.colorTerraCota,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                //const SizedBox(height: 8.0),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 30.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.keyboard_arrow_left,
                              color: ConstColors.colorWhite,
                              size: 42.0,
                            ),
                            onPressed: () {
                              debugPrint("CLICK BUTTON BACK <");
                              exit(0);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 140),
                Image.asset(
                  "images/logotinder.png",
                  width: 180,
                  height: 100,
                ),

                const SizedBox(height: 90.0),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                  child: Column(
                    children: <Widget>[
                      const Text(
                        'By tapping Create Account of Sign In,you agree to our',
                        style: TextStyle(
                          color: ConstColors.colorWhite,
                          fontSize: 14.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              loginController.dailog();
                            },
                            child: const Text(
                              'Terms ',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                inherit: true,
                                color: ConstColors.colorWhite,
                                fontSize: 15.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Text(
                            '.Learm how we process your data in our',
                            style: TextStyle(
                              color: ConstColors.colorWhite,
                              fontSize: 14.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          GestureDetector(
                            onTap: () {
                              loginController.dailog();
                            },
                            child: const Text(
                              ' Privacy',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                inherit: true,
                                color: ConstColors.colorWhite,
                                fontSize: 15.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              loginController.dailog();
                            },
                            child: const Text(
                              'Privacy ',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: ConstColors.colorWhite,
                                fontSize: 15.0,
                                inherit: true,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const Text(
                            'and Cookies',
                            style: TextStyle(
                              color: ConstColors.colorWhite,
                              fontSize: 14.0,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          GestureDetector(
                            onTap: () {
                              loginController.dailog();
                            },
                            child: const Text(
                              ' Policy',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: ConstColors.colorWhite,
                                fontSize: 14.0,
                                inherit: true,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 28.0),
                ButtonTransparent(
                  height: 48.0,
                  width: MediaQuery.of(context).size.width,
                  fontSize: 16.0,
                  marginRight: 18.0,
                  marginLeft: 18.0,
                  text: '         SING IN WITH APPLE',
                  pathImage: "images/apple.png",
                  callback: ()async {
                   await loginController.dailog();
                  },
                ),
                const SizedBox(height: 8.0),
                ButtonTransparent(
                  height: 48.0,
                  width: MediaQuery.of(context).size.width,
                  fontSize: 16.0,
                  marginRight: 18.0,
                  marginLeft: 18.0,
                  text: '     SING IN WITH FACEBOOK',
                  pathImage: "images/facebook.png",
                  callback: () {
                    loginController.dailog();
                  },
                ),
                const SizedBox(height: 8.0),
                ButtonTransparent(
                  height: 48.0,
                  width: MediaQuery.of(context).size.width,
                  fontSize: 16.0,
                  marginRight: 18.0,
                  marginLeft: 18.0,
                  text: 'SING IN WITH PHONE NUMBER',
                  pathImage: "images/conversation.png",
                  callback: () {
                    loginController.dailog();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    bottom: 8.0,
                    left: 18.0,
                    right: 18.0,
                  ),
                  child: TextButton(
                    onPressed: () {
                      loginController.dailog();
                    },
                    child: const Text(
                      "Trouble Sinning In?",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: ConstColors.colorWhite,
                      ),
                    ),
                  ),
                ),

                //_myRow
              ],
            ),
          ),
        ),
      ),
    );
  }
}
