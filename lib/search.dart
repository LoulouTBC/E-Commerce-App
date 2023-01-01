import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
                                          color: Color.fromARGB(
                                              255, 239, 236, 236),
                                          borderRadius:
                                              BorderRadius.circular(29),
                                        ),
                                        child: const TextField(
                                          textAlign: TextAlign.center,
                                          cursorColor:
                                              Color.fromARGB(255, 20, 16, 16),
                                          decoration: InputDecoration(
                                            alignLabelWithHint: true,
                                            hintText: 'Search Something',
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 11,
                                      child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 25),
                                        child: Column(
                                          children: [
                                            Expanded(
                                              //Last search
                                              child: Container(
                                                color: Colors.amber,
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
                                                          Text('CLEAR'),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                        flex: 3,
                                                        child: Container(
                                                          color: Colors.pink,
                                                          child: ListView(
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        vertical:
                                                                            size.width *
                                                                                0.07),
                                                                child:
                                                                    Container(
                                                                 
                                                                  width:
                                                                      size.width *
                                                                          0.6,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  decoration: BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20)),
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        //resize image
                                                                        child: Image.asset(
                                                                            'images/shoe1.png'),
                                                                      ),
                                                                      const Text(
                                                                          'lsjadfkalsdjflsdkfj'),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              //Last search
                                              flex: 1,
                                              child: Container(
                                                color: Colors.amber,
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
                                                          Text('CLEAR'),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                        flex: 2,
                                                        child: Container(
                                                          color: Colors.pink,
                                                        ))
                                                  ],
                                                ),
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
          Expanded(flex: 1, child: Container(color: Colors.amber)),
        ],
      ),
    );
  }
}
