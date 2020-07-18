import 'package:flutter/material.dart';
import 'package:newsapp/screens/onboarding.dart';
 main() => runApp(NewsApp());

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My News App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red
      ),
      home:OnBoarding(),
    );
  }
}
