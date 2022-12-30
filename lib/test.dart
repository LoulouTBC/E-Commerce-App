import 'package:flutter/material.dart';
import 'package:my_ui/constants/discriptionTextWidget.dart';

class HomeScreen extends StatelessWidget {
  final String description =
      "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo App"),
      ),
      body: Container(
        child: DescriptionTextWidget(text: description),
      ),
    );
  }
}

