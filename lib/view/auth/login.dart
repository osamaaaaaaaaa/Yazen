import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playing_with_flutter/controller/AuthController.dart';
import 'package:playing_with_flutter/view/Home/Home.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GetBuilder<AuthController>(
        builder: (controller) => Scaffold(
              body: Container(
                margin: EdgeInsets.only(top: size.height * 0.15),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: size.height * 0.4,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: (() => //controller.signInWithGoogle()
                          Get.to(Home())),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/google.png'),
                          Text(
                            'تسجيل الدخول بواسطه جوجل',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: (() => print(DateTime.now().minute)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/facebook.png'),
                          Text(
                            'تسجيل الدخول بواسطه فيس بوك',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
