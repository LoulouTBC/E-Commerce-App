import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  String myText;
  final DecorationImage? myImage;
  final Size size;
  Color color1;
  Color color2;
  Color shadowColor;
  final Icon? myIcon;
  final Function()? func;
  CircleIcon({
    this.myImage,
    this.myIcon,
    required this.myText,
    required this.color1,
    required this.color2,
    required this.shadowColor,
    required this.size,
    // required this.myImage,
    Key? key,
    required this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        // color: Color.fromARGB(255, 164, 48, 95),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                  color: shadowColor,
                  spreadRadius: -10,
                  blurRadius: 20,
                  offset: Offset(0, 10), // changes position of shadow
                ),
              ]),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 35,
                child: Container(
                  decoration: BoxDecoration(
                    // image: DecorationImage(
                    //     image: AssetImage('images/$myImage'), opacity: 0.8),
                    image: myImage,
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        color1,
                        color2
                        // Color.fromARGB(255, 231, 194, 138),
                        // Colors.orange,
                      ],
                    ),
                  ),
                  child: myIcon,
                ),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 1),
              padding: EdgeInsets.only(top: 10),
              // color: Colors.blue,
              alignment: Alignment.bottomCenter,
              child: Text(
                myText,
                style:
                    TextStyle(fontSize: size.width * 0.04, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
