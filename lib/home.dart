import 'package:flutter/material.dart';
import 'package:my_ui/constants/circleIcon.dart';
import 'package:my_ui/constants/latestContainer.dart';
import 'package:my_ui/constants/latestProduct.dart';

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
      // backgroundColor: Color.fromARGB(255, 247, 242, 242),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                // color: Colors.amber,
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
                flex: 8,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        // color: Colors.blue,
                        // width: size.width,
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
                                          size: size,
                                          func: () {
                                            Navigator.pushNamed(
                                                context, "signup");
                                          },
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
                                          size: size,
                                          func: () {
                                            Navigator.pushNamed(
                                                context, "signup");
                                          },
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
                                          size: size,
                                          func: () {
                                            Navigator.pushNamed(
                                                context, "signup");
                                          },
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
                                    size: size,
                                    func: () {
                                      Navigator.pushNamed(
                                          context, "allCategories");
                                    },
                                    myText: 'See All',
                                    color1: Color.fromARGB(255, 255, 255, 255),
                                    color2: Color.fromARGB(255, 255, 255, 255),
                                    shadowColor: Color.fromARGB(86, 0, 0, 0),
                                    myIcon: const Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Colors.red,
                                    ),
                                  )),
                                ],
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
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
                                  LatestContainer(
                                    seemore: true,
                                    size: size,
                                    image: '1.png',
                                    text1: 'For all your',
                                    text2: 'summer clothing',
                                    text3: 'needs',
                                  ),
                                  LatestContainer(
                                      size: size,
                                      image: '2.png',
                                      text1: '',
                                      text2: '',
                                      text3: '',
                                      seemore: false)
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
                flex: 5,
                child: Container(
                  // color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: const [
                        LatestProduct(),
                        LatestProduct(),
                        LatestProduct(),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
