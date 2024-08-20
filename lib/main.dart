import 'package:flutter/material.dart';
import 'package:flutter_my_app/screen/home_nav_bar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeNavBar(),
    );
  }
}
