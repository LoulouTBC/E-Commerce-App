import 'package:flutter/material.dart';
import 'package:my_ui/allCategories.dart';
import 'package:my_ui/home.dart';
import 'package:my_ui/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   splashColor: Colors.amber,
      // ),
      debugShowCheckedModeBanner: false,
      initialRoute: "home",
      routes: {
        "signup": ((context) => SignUP()),
        "home": ((context) => HomePage()),
        "allCategories": ((context) => AllCategories()),
      },
    );
  }
}
