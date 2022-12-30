import 'package:flutter/material.dart';

class BottomWithIcon extends StatelessWidget {
  const BottomWithIcon({
    Key? key,
    required this.size,
    required this.text,
    required this.backgroundBottomColor,
    required this.backgroundIconColor,
    required this.iconColor,
    required this.textColor, required this.icon,
  }) : super(key: key);

  final Size size;
  final String text;
  final Color backgroundBottomColor;
  final Color backgroundIconColor;
  final Color iconColor;
  final Color textColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width * 0.35,
        height: size.height * 0.06,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(91, 145, 140, 140),
                spreadRadius: 3,
                blurRadius: 12,
                offset: Offset(2, 4), // changes position of shadow
              ),
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: MaterialButton(
            // color: Color.fromARGB(255, 255, 255, 255),
            color: backgroundBottomColor,
            disabledColor: Colors.grey,
            // shape:
            //     const RoundedRectangleBorder(
            //   borderRadius:
            //       BorderRadius.all(
            //     Radius.circular(30),
            //   ),
            // ),
            onPressed: () {
              Navigator.pushNamed(context, "home");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // If I want it on left

                Text(
                  text,
                  style:
                      TextStyle(color: textColor, fontSize: size.width * 0.036),
                ),
                CircleAvatar(
                  maxRadius: size.width * 0.035,
                  // minRadius: 10,
                  // backgroundColor: Color(0xffFF6969),
                  backgroundColor: backgroundIconColor,
                  child: Icon(
                    icon,
                    // color: Color.fromARGB(255, 255, 255, 255),
                    color: iconColor,
                    size: size.width * 0.035,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
