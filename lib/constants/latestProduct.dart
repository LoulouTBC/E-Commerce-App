import 'package:flutter/material.dart';

class LatestProduct extends StatelessWidget {
  const LatestProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(86, 0, 0, 0),
              spreadRadius: -15,
              blurRadius: 20,
              offset: Offset(10, 10), // changes position of shadow
            ),
          ]),
      margin: EdgeInsets.only(right: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('images/shoe1.png'))),
                // color: Colors.amber,
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.centerLeft,
                  // color: Color.fromARGB(255, 77, 7, 255),
                  child: Text(
                    'Ankle Boots',
                    style: TextStyle(
                        fontFamily: 'Manrope-ExtraLight', fontSize: 13),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.topLeft,
                  // color: Color.fromARGB(255, 77, 7, 255),
                  child: Text(
                    '\$49.49',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Manrope-ExtraLight',
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
