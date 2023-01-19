import 'package:flutter/material.dart';
import 'package:my_ui/allCategories.dart';
import 'package:my_ui/cart.dart';
import 'package:my_ui/home.dart';
import 'package:my_ui/more.dart';
import 'package:my_ui/productProduct.dart';
import 'package:my_ui/profile.dart';
import 'package:my_ui/search.dart';
import 'package:my_ui/signup.dart';
import 'package:my_ui/test.dart';

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
      initialRoute: "signup",
      routes: {
        "signup": ((context) => const SignUP()),
        "home": ((context) => const HomePage()),
        "allCategories": ((context) => const AllCategories()),
        "productProduct": ((context) => const ProductProduct()),
        "test": ((context) => HomeScreen()),
        "search": ((context) => const Search()),
        "profile": ((context) => const Profile()),
        "menu": ((context) => const More()),
        "cart": ((context) => const Cart()),
      },
    );
  }
}
