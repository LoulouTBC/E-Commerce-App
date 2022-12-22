import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_ui/constants/circleIcon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.messenger_outline)),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.notifications_none)),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        // width: size.width,
                        color: Colors.amber,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "Categories",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      // backgroundColor: Colors.white,
                                      fontFamily: "Prompt",
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                  child: Row(
                                children: [
                                  Expanded(
                                      child: CircleIcon(
                                          myText: 'Apparel',
                                          color1: const Color.fromARGB(
                                              255, 231, 194, 138),
                                          color2: Colors.orange,
                                          shadowColor: const Color.fromARGB(
                                              137, 255, 77, 0),
                                          myImage: const DecorationImage(
                                              image: AssetImage(
                                                  'images/icons8-clothes-48.png')))),
                                  Expanded(
                                      child: CircleIcon(
                                          myText: 'Beauty',
                                          color1: const Color.fromARGB(
                                              255, 184, 220, 230),
                                          color2: const Color.fromARGB(
                                              255, 43, 189, 229),
                                          shadowColor: const Color.fromARGB(
                                              149, 33, 72, 243),
                                          myImage: const DecorationImage(
                                              image: AssetImage(
                                                  'images/icons8-lipstick.png')))),
                                  Expanded(
                                      child: CircleIcon(
                                          myText: 'Shoes',
                                          color1: Color.fromARGB(
                                              255, 209, 230, 184),
                                          color2:
                                              Color.fromARGB(255, 43, 229, 71),
                                          shadowColor:
                                              Color.fromARGB(138, 31, 110, 43),
                                          myImage: const DecorationImage(
                                              image: AssetImage(
                                                  'images/icons8-women-shoe-side-view-50.png')))),
                                  Expanded(
                                      child: CircleIcon(
                                    myText: 'See All',
                                    color1: Color.fromARGB(255, 255, 255, 255),
                                    color2: Color.fromARGB(255, 255, 255, 255),
                                    shadowColor: Color.fromARGB(86, 0, 0, 0),
                                    myIcon: const Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Colors.red,
                                    ),
                                  )),
                                  // Expanded(
                                  //   child: Container(
                                  //     color: Color.fromARGB(255, 65, 172, 177),
                                  //   ),
                                  // ),
                                  // Expanded(
                                  //   child: Container(
                                  //     color: Color.fromARGB(255, 38, 168, 90),
                                  //   ),
                                  // ),
                                  // Expanded(
                                  //   child: Container(
                                  //     color: Color.fromARGB(255, 233, 30, 30),
                                  //   ),
                                  // ),
                                ],
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        // width: size.width,
                        // color: Colors.amber,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  "Latest",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      // backgroundColor: Colors.white,
                                      fontFamily: "Prompt",
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                  // color: Colors.green,
                                  child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              'images/fashion3.png')),
                                      color: Colors.pink,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    width: size.width * 0.8,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: size.width * 0.1,
                                          top: size.width * 0.1),
                                      child: Container(
                                        color: Colors.amber,
                                        alignment: Alignment.topLeft,
                                        child: Column(
                                          // mainAxisAlignment:
                                          //     MainAxisAlignment,
                                          children: [
                                            Text(
                                              'For All your ',
                                              style: TextStyle(fontSize: 25),
                                              textAlign: TextAlign.start,
                                            ),
                                            Text(
                                              'Summer clothing',
                                              style: TextStyle(fontSize: 25),
                                              textAlign: TextAlign.start,
                                            ),
                                            Text(
                                              'needs',
                                              style: TextStyle(fontSize: 25),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    // color: Colors.amber,
                                  )
                                ],
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                )),
          ],
        ),
      ),
    );
  }
}
