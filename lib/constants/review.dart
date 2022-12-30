import 'package:flutter/material.dart';
import 'package:my_ui/constant.dart';
import 'package:my_ui/constants/discriptionTextWidget.dart';

class Review extends StatelessWidget {
  const Review({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      // color: Colors.pink,
      child: ListView(
        children: [
          Container(
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.topLeft,
                      // color: Colors.blue,
                      child: const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 139, 246, 219),
                        radius: 35,
                        child: Text(
                          'J D',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    )),
                Expanded(
                    flex: 3,
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: i == 4 ? Colors.grey : primerColor,
                                ),
                            ],
                          )),
                          const Text(
                            '12 NOV 2018',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        // color: Colors.blue,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Jane Doe',
                              style: TextStyle(
                                  fontSize: 17,
                                  letterSpacing: 0.6,
                                  color: Color.fromARGB(255, 85, 84, 84)),
                            ),
                            SizedBox(
                              height: size.height * 0.007,
                            ),
                            DescriptionTextWidget(
                                text:
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt'),
                          ],
                        ),
                      ),
                    ])),
              ],
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Divider(
            color: Color.fromARGB(255, 210, 209, 209),
          ),
          Container(
            // color: Colors.pink,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.topLeft,
                      // color: Colors.blue,
                      child: const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 198, 182, 216),
                        radius: 35,
                        child: Text(
                          'J D',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    )),
                Expanded(
                    flex: 3,
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: i == 4 ? Colors.grey : primerColor,
                                ),
                            ],
                          )),
                          const Text(
                            '12 NOV 2018',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        // color: Colors.blue,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Jane Doe',
                              style: TextStyle(
                                  fontSize: 17,
                                  letterSpacing: 0.6,
                                  color: Color.fromARGB(255, 85, 84, 84)),
                            ),
                            SizedBox(
                              height: size.height * 0.005,
                            ),
                            DescriptionTextWidget(
                                text:
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt'),
                          ],
                        ),
                      ),
                    ])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}