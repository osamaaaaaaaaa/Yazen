import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:playing_with_flutter/binding/binding.dart';
import 'package:playing_with_flutter/view/Home/Home.dart';
import 'package:playing_with_flutter/view/auth/login.dart';
import 'firebase_options.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: binding(),
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
