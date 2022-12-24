import 'package:flutter/material.dart';

class AdvText extends StatelessWidget {
  String advText;
  AdvText({
    required this.advText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        advText,
        style: const TextStyle(
            // letterSpacing: 1,
            // fontWeight: FontWeight.w400,
            fontSize: 17,
            fontFamily: 'Manrope-ExtraLight',
            color: Colors.white),
        // textAlign: TextAlign.start,
      ),
    );
  }
}
