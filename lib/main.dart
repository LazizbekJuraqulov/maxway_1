import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maxway/home_page/bottonnavbar.dart';
import 'package:maxway/home_page/widgets/product.dart';
import 'package:maxway/person_page/edit_page.dart';
import 'package:maxway/splashScreen.dart';

import 'home_page/home_page.dart';


void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor:Color(0xffF8F6FA), ),
      home: SplashScreenPage(),
    );
    
  }
}