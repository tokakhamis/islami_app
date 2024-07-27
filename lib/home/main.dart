import 'package:flutter/material.dart';
import 'package:islami_project/home/home_screen.dart';
import 'package:islami_project/home/my_theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      theme: MyThemeData.lightTheme,
      routes: {HomeScreen.routName: (context) => HomeScreen()},
    );
  }
}
