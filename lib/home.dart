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
                        // color: Colors.amber,
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
                                      myText: 'Hello',
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      // color: Color.fromARGB(255, 164, 48, 95),
                                      child: Column(
                                        children: [
                                          const Expanded(
                                            flex: 3,
                                            child: CircleAvatar(
                                                minRadius: 37,
                                                backgroundColor: Colors.orange),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              // color: Colors.blue,
                                              alignment: Alignment.bottomCenter,
                                              child: Text(
                                                "Apparel",
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      // color: Color.fromARGB(255, 164, 48, 95),
                                      child: Column(
                                        children: [
                                          const Expanded(
                                            flex: 3,
                                            child: CircleAvatar(
                                                minRadius: 37,
                                                backgroundColor: Colors.orange),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              // color: Colors.blue,
                                              alignment: Alignment.bottomCenter,
                                              child: Text(
                                                "Apparel",
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      // color: Color.fromARGB(255, 164, 48, 95),
                                      child: Column(
                                        children: [
                                          const Expanded(
                                            flex: 3,
                                            child: CircleAvatar(
                                                minRadius: 37,
                                                backgroundColor: Colors.orange),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              // color: Colors.blue,
                                              alignment: Alignment.bottomCenter,
                                              child: Text(
                                                "Apparel",
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
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
                          color: Colors.pink,
                        )),
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
