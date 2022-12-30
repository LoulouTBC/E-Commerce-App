import 'package:flutter/material.dart';

class ViewOption extends StatelessWidget {
  const ViewOption({
    Key? key,
    required this.size,
    required this.i,
    required this.currentOption,
    required this.onTap,
  }) : super(key: key);

  final Size size;
  final int i;
  final int currentOption;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: size.width * 0.2,
        height: size.height * 0.04,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 253, 250, 250),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 0))
            ],
            color: i == currentOption
                ? Colors.white
                : const Color.fromARGB(149, 243, 237, 237),
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          i == 0
              ? 'Product'
              : i == 1
                  ? 'Detailes'
                  : 'Reviews',
          style: TextStyle(
            color: i == currentOption
                ? const Color(0xffFF6969)
                : const Color.fromARGB(255, 148, 146, 146),
            // fontFamily: 'Manrope-ExtraLight',
            fontSize: size.width * 0.04,
          ),
        ),
      ),
    );
  }
}
