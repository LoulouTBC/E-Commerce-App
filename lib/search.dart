import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String hintText = 'Search Something';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushNamedAndRemoveUntil(
            context, 'home', (Route<dynamic> route) => false);
        return false;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Expanded(
              flex: 13,
              child: Padding(
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
                                onPressed: () {},
                                icon: const Icon(Icons.messenger_outline)),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.notifications_none)),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 12,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "Search",
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
                                flex: 8,
                                child: Container(
                                  // color: Colors.pink,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20,
                                          ),
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 239, 236, 236),
                                            borderRadius:
                                                BorderRadius.circular(29),
                                          ),
                                          child: TextField(
                                            onTap: () {
                                              hintText = '';
                                            },
                                            textAlign: TextAlign.center,
                                            cursorColor:
                                                Color.fromARGB(255, 20, 16, 16),
                                            decoration: InputDecoration(
                                              alignLabelWithHint: true,
                                              hintText: hintText,
                                              border: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 11,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 25),
                                          child: Column(
                                            children: [
                                              Expanded(
                                                //Last search
                                                child: Container(
                                                  // color: Colors.amber,
                                                  child: Column(
                                                    children: [
                                                      Expanded(
                                                        flex: 1,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: const [
                                                            Text(
                                                                'RECENTLY VIEWED'),
                                                            Text(
                                                              'CLEAR',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xffFF6969)),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                          flex: 3,
                                                          child: ListView(
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            children: [
                                                              RecentlyViewed(
                                                                  size: size),
                                                              RecentlyViewed(
                                                                  size: size),
                                                              RecentlyViewed(
                                                                  size: size),
                                                            ],
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                //Last search
                                                flex: 2,
                                                child: Column(
                                                  children: [
                                                    Expanded(
                                                      flex: 1,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: const [
                                                          Text('RECOMMENDED'),
                                                          Text(
                                                            'REFRESH',
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xffFF6969)),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                        flex: 4,
                                                        child: Column(
                                                          children: [
                                                            Expanded(
                                                                flex: 1,
                                                                child: ListView(
                                                                  scrollDirection:
                                                                      Axis.horizontal,
                                                                  children: [
                                                                    Recommended(
                                                                      size:
                                                                          size,
                                                                      text:
                                                                          'Denim Jeans',
                                                                    ),
                                                                    Recommended(
                                                                      size:
                                                                          size,
                                                                      text:
                                                                          'Mini Skirt',
                                                                    ),
                                                                    Recommended(
                                                                      size:
                                                                          size,
                                                                      text:
                                                                          'Jacket',
                                                                    ),
                                                                    Recommended(
                                                                      size:
                                                                          size,
                                                                      text:
                                                                          'Accessories',
                                                                    ),
                                                                  ],
                                                                )),
                                                            Expanded(
                                                                flex: 1,
                                                                child: ListView(
                                                                  scrollDirection:
                                                                      Axis.horizontal,
                                                                  children: [
                                                                    Recommended(
                                                                      size:
                                                                          size,
                                                                      text:
                                                                          'Sports Accessories',
                                                                    ),
                                                                    Recommended(
                                                                      size:
                                                                          size,
                                                                      text:
                                                                          'Yoga pants',
                                                                    ),
                                                                    Recommended(
                                                                      size:
                                                                          size,
                                                                      text:
                                                                          'Eye Shadow',
                                                                    ),
                                                                  ],
                                                                )),
                                                            Expanded(
                                                                flex: 3,
                                                                child:
                                                                    Container())
                                                          ],
                                                        ))
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Recommended extends StatelessWidget {
  const Recommended({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: size.width * 0.02, horizontal: 10),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          // width:
          //     size.width *
          //         0.6,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 222, 218, 218),
                    blurRadius: 50,
                    spreadRadius: -5,
                    offset: Offset(15, 1)),
              ]),
          child: Text(
            text,
            style: const TextStyle(color: Color.fromARGB(255, 132, 132, 132)),
          )),
    );
  }
}

class RecentlyViewed extends StatelessWidget {
  const RecentlyViewed({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: size.width * 0.05, horizontal: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        // width:
        //     size.width *
        //         0.6,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 230, 227, 227),
                  blurRadius: 30,
                  spreadRadius: -5,
                  offset: Offset(15, 1)),
            ]),
        child: Row(
          children: [
            Image.asset('images/shoe1.png'),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Ankle Boots',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 132, 132, 132)),
                ),
                Text(
                  '\$49.99',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 92, 91, 91)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
