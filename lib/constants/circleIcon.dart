import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  String myText;
   CircleIcon({
    required this.myText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color.fromARGB(255, 164, 48, 95),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration:
                  const BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(110, 255, 153, 0),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 4), // changes position of shadow
                ),
              ]),
              child: CircleAvatar(
                radius: 35,
                // minRadius: 20,
                // backgroundColor:
                //     Color(0xffFF6969),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/icons8-clothes-48.png')),
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 231, 194, 138),
                        Colors.orange,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              // color: Colors.blue,
              alignment: Alignment.bottomCenter,
              child: Text(
                myText,
                style: TextStyle(fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
