import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_ui/bottomBar.dart';
import 'package:my_ui/constant.dart';
import 'package:my_ui/constants/bottomWithIcon.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(children: [
      Expanded(
          flex: 13,
          child: Padding(
              padding: EdgeInsets.all(size.width * 0.05),
              child: Column(children: [
                Expanded(
                  flex: 1,
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
                Expanded(
                  flex: 12,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: const Text(
                            "Cart",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                // backgroundColor: Colors.white,
                                fontFamily: "Prompt",
                                fontSize: 29,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 1),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 13,
                          child: Container(
                            // color: Colors.amber,
                            child: Column(children: [
                              const Expanded(
                                  flex: 3,
                                  child: CartElement(
                                    imagePath: 'images/bag.png',
                                    text: 'Bottle Green BackPack',
                                  )),
                              const Divider(
                                color: Color.fromARGB(255, 210, 210, 210),
                              ),
                              const Expanded(
                                  flex: 3,
                                  child: CartElement(
                                    imagePath: 'images/scarf.png',
                                    text: 'Red Cotton Scarf',
                                  )),
                              const Divider(
                                color: Color.fromARGB(255, 210, 210, 210),
                              ),
                              const Expanded(
                                  flex: 3,
                                  child: CartElement(
                                    imagePath: 'images/shoe2.png',
                                    text: 'White Sport Shoes',
                                  )),
                              const Divider(
                                color: Color.fromARGB(255, 210, 210, 210),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  // color: Colors.amber,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: const [
                                          Text(
                                            'TOTAL',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 190, 189, 189),
                                                fontSize: 12),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 6),
                                            child: Text(
                                              '\$81.57',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 23),
                                            ),
                                          ),
                                          Text(
                                            'Free Domestic Shipping',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 124, 124, 124),
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                      BottomWithIcon(
                                          size: size * 1.2,
                                          text: 'CHECKOUT',
                                          backgroundBottomColor: primerColor,
                                          backgroundIconColor: Colors.white,
                                          iconColor: primerColor,
                                          textColor: Colors.white,
                                          icon:
                                              Icons.arrow_forward_ios_outlined)
                                    ],
                                  ),
                                ),
                              )
                            ]),
                          ))
                    ],
                  ),
                )
              ]))),
      Expanded(flex: 1, child: BottomBar(current: 'cart'))
    ]));
  }
}

class CartElement extends StatelessWidget {
  const CartElement({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);
  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              // width: 200,
              // height: 200,
              decoration: BoxDecoration(
                  boxShadow: [
                    const BoxShadow(
                        color: Color.fromARGB(255, 188, 186, 186),
                        spreadRadius: -20,
                        blurRadius: 50,
                        offset: Offset(4, 4))
                  ],
                  color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.contain, image: AssetImage(imagePath))),
              // child: Image(
              //     image:
              //         AssetImage('images/bag.png')),
            )),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerLeft,
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                        fontSize: 17,
                        letterSpacing: 0.3,
                        color: Color.fromARGB(255, 98, 98, 98)),
                  ),
                  const Text(
                    'Medium, Green',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Manrope-ExtraLight',
                        fontWeight: FontWeight.w300,
                        fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$20.58',
                    style: TextStyle(color: primerColor, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                          radius: 10,
                          backgroundColor: Color.fromARGB(255, 214, 213, 213),
                          child: Text(
                            '-',
                            style: TextStyle(color: Colors.black),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '1',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 130, 130, 130)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 214, 213, 213),
                        child: Text(
                          '+',
                          style: TextStyle(color: Colors.black),
                        ),
                        radius: 10,
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
