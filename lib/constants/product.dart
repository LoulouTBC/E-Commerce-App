import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({
    Key? key,
    required this.colorSelected,
    required this.size,
  }) : super(key: key);

  final int colorSelected;
  final Size size;
  operation(i) {
    return (i * 0.5 + 4.5);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                // color: Colors.black,
                child: const Text(
                  'SELECT COLOR',
                  style: TextStyle(color: Color.fromARGB(255, 148, 146, 146)),
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                // color: Colors.red,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < 6; i++)
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: i == 0
                                  ? Colors.pink
                                  : i == 1
                                      ? Colors.orange
                                      : i == 2
                                          ? Colors.blue
                                          : i == 3
                                              ? const Color.fromARGB(
                                                  255, 100, 95, 95)
                                              : i == 4
                                                  ? Colors.grey
                                                  : Colors.black,
                              spreadRadius: -10,
                              blurRadius: 20,
                              offset: const Offset(
                                  0, 10), // changes position of shadow
                            ),
                          ]),
                          child: CircleAvatar(
                              backgroundColor: i == 0
                                  ? Colors.pink
                                  : i == 1
                                      ? Colors.orange
                                      : i == 2
                                          ? Colors.blue
                                          : i == 3
                                              ? Colors.white
                                              : i == 4
                                                  ? Colors.grey
                                                  : Colors.black,
                              child: i == colorSelected
                                  ? const Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : const Text('')),
                        ),
                    ]),
              )),
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                // color: Colors.black,
                child: const Text(
                  'SELECT SIZE (US)',
                  style: TextStyle(color: Color.fromARGB(255, 148, 146, 146)),
                ),
              )),
          Expanded(
              flex: 2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < 8; i++)
                    Container(
                      alignment: Alignment.center,
                      width: size.width * 0.2,
                      margin: EdgeInsets.symmetric(
                          horizontal: 8, vertical: size.width * 0.025),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 240, 234, 234),
                                spreadRadius: 3,
                                blurRadius: 15,
                                offset: Offset(0, 1))
                          ]),
                      child: Text(operation(i).toString()),
                    ),
                ],
              )),
          // Divider(
          //   // height: 1,
          //   thickness: 0.3,
          //   color: Color.fromARGB(255, 224, 219, 219),
          // ),
        ],
      ),
    );
  }
}