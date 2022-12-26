import 'package:flutter/material.dart';
import 'package:my_ui/constants/circleIcon.dart';

class AllCategories extends StatefulWidget {
  const AllCategories({super.key});

  @override
  State<AllCategories> createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(size.height * 0.03),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "home");
                    },
                    child: Container(
                      alignment: Alignment.bottomRight,
                      // color: Colors.amber
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color(0xffFF6969),
                        size: size.width * 0.06,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    // color: Colors.blue,
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "All Categories",
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
                ),
                Expanded(
                  flex: 14,
                  child: Container(
                    // color: Colors.pink,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              // color: Colors.green,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                    margin: EdgeInsets.only(
                                        top: size.height * 0.03),
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
                                                'images/icons8-clothes-48.png'),
                                            opacity: 0.8)),
                                  )),
                                  Expanded(
                                      child: Container(
                                    margin: EdgeInsets.only(
                                        top: size.height * 0.03),
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
                                                'images/icons8-lipstick.png'),
                                            opacity: 0.8)),
                                  )),
                                  Expanded(
                                      child: Container(
                                    margin: EdgeInsets.only(
                                        top: size.height * 0.03),
                                    child: CircleIcon(
                                        size: size,
                                        func: () {
                                          Navigator.pushNamed(
                                              context, "signup");
                                        },
                                        myText: 'Shoes',
                                        color1:
                                            Color.fromARGB(255, 209, 230, 184),
                                        color2:
                                            Color.fromARGB(255, 43, 229, 71),
                                        shadowColor:
                                            Color.fromARGB(138, 31, 110, 43),
                                        myImage: const DecorationImage(
                                            image: AssetImage(
                                                'images/icons8-women-shoe-side-view-50.png'),
                                            opacity: 0.8)),
                                  )),
                                  Expanded(
                                      child: Container(
                                    margin: EdgeInsets.only(
                                        top: size.height * 0.03),
                                    child: CircleIcon(
                                        size: size,
                                        myText: 'Electronic',
                                        color1:
                                            Color.fromARGB(255, 206, 154, 234),
                                        color2:
                                            Color.fromARGB(255, 123, 187, 207),
                                        shadowColor:
                                            Color.fromARGB(255, 188, 133, 218),
                                        myImage: DecorationImage(
                                            image: AssetImage(
                                              'images/electronic.png',
                                            ),
                                            opacity: 0.8),
                                        func: () {}),
                                  )),
                                  Expanded(
                                      child: Container(
                                          margin: EdgeInsets.only(
                                              top: size.height * 0.03),
                                          child: CircleIcon(
                                            size: size,
                                            myText: 'Furniture',
                                            color1: Colors.yellow,
                                            color2: Colors.orange,
                                            shadowColor: Colors.orange,
                                            func: () {},
                                            myImage: DecorationImage(
                                                image: AssetImage(
                                                    'images/furniture.png'),
                                                opacity: 0.9),
                                          ))),
                                  Expanded(
                                      child: Container(
                                    margin: EdgeInsets.only(
                                        top: size.height * 0.03,
                                        bottom: size.height * 0.03),
                                    child: CircleIcon(
                                      size: size,
                                      myText: 'myText',
                                      color1: Color.fromARGB(255, 244, 85, 194),
                                      color2:
                                          Color.fromARGB(255, 205, 149, 215),
                                      shadowColor:
                                          Color.fromARGB(255, 204, 118, 220),
                                      func: () {},
                                      myImage: DecorationImage(
                                          image: AssetImage('images/home.png'),
                                          opacity: 0.8),
                                    ),
                                  )),
                                  Expanded(
                                      child: Container(
                                    margin: EdgeInsets.only(
                                        top: size.height * 0.03,
                                        bottom: size.height * 0.03),
                                    child: CircleIcon(
                                        size: size,
                                        myText: 'myText',
                                        color1: Colors.orange,
                                        color2: Colors.white,
                                        shadowColor: Colors.orange,
                                        func: () {}),
                                  )),
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 4,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.05,
                              ),
                              child: Container(
                                // color: Colors.black,
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: CategorieTypes(
                                      label: 'MEN\'S APPAREL',
                                    )),
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: size.height * 0.03,
                                          bottom: size.height * 0.02),
                                      child: Divider(
                                        color: Colors.grey,
                                        thickness: 0.3,
                                      ),
                                    ),
                                    Expanded(
                                        child: CategorieTypes(
                                      label: 'WOMEN\'S APPAREL',
                                    )),
                                    SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                // const Text('Header'),
                // Expanded(child: Container(color: Colors.red)),
                // const Text('Footer'),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class CategorieTypes extends StatelessWidget {
  final String label;
  const CategorieTypes({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.topLeft,
                // color: Colors.amber,
                child: Text(
                  label,
                  style: TextStyle(color: Colors.grey),
                ),
              )),
          Expanded(
              flex: 13,
              child: Container(
                decoration: BoxDecoration(
                    // color: Colors.red,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(86, 0, 0, 0),
                        spreadRadius: -8,
                        blurRadius: 15,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: const [
                    Expanded(
                        child: SmallCategories(
                      mytext: 'T-shirts',
                    )),
                    Expanded(
                        child: SmallCategories(
                      mytext: 'Shirts',
                    )),
                    Expanded(
                        child: SmallCategories(
                      mytext: 'Pants & Jeans',
                    )),
                    Expanded(
                        child: SmallCategories(
                      mytext: 'Socks & Ties',
                    )),
                    Expanded(
                        child: SmallCategories(
                      mytext: 'Underwear',
                    )),
                    Expanded(
                        child: SmallCategories(
                      mytext: 'Jackets',
                    )),
                    Expanded(
                        child: SmallCategories(
                      mytext: 'coats',
                    )),
                    Expanded(
                        child: SmallCategories(
                      mytext: 'coats',
                    )),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class SmallCategories extends StatelessWidget {
  final String mytext;
  const SmallCategories({
    Key? key,
    required this.mytext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey, width: 0.08),
            // top: BorderSide(color: Colors.grey, width: 0.4),
          ),
        ),
        // color: Colors.pink,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              mytext,
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 124, 124, 124)),
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 229, 228, 228),
              radius: 10,
              child: Icon(
                Icons.arrow_forward_ios_sharp,
                color: Color.fromARGB(255, 124, 124, 124),
                size: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// 298

// Instead of using SingleChildScrollView, It's easier to use CustomScrollView with a SliverFillRemaining.

// Try this:

// CustomScrollView(
//   slivers: [
//     SliverFillRemaining(
//       hasScrollBody: false,
//       child: Column(
//         children: <Widget>[
//           const Text('Header'),
//           Expanded(child: Container(color: Colors.red)),
//           const Text('Footer'),
//         ],
//       ),
//     ),
//   ],
// )

// Consider setting mainAxisSize to MainAxisSize.min (for column) and using FlexFit.
//loose fits for the flexible(use Flexible rather than Expanded).
