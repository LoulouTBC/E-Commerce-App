import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_ui/constants/bottomWithIcon.dart';
import 'package:my_ui/constants/dottedIndicator.dart';
import 'package:my_ui/constants/review.dart';
import 'package:my_ui/constants/viewOption.dart';

import 'constants/details.dart';
import 'constants/product.dart';

class ProductProduct extends StatefulWidget {
  const ProductProduct({super.key});

  @override
  State<ProductProduct> createState() => _ProductProductState();
}

class _ProductProductState extends State<ProductProduct> {
  int currentSliderIndex = 0;
  int currentOption = 0;
  int colorSelected = 0;

  Builder offerImage(Size size, String imagePath) {
    return Builder(
      builder: (context) {
        return Container(
          width: size.width,
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.height * 0.03),
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          // color: Colors.black,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back_ios_new),
                            // size: 25,
                            onPressed: (() {
                              Navigator.pushNamed(context, "home");
                            }),
                          ),
                        )),
                    Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Faux Sued Ankle Boots',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: 'Manrope-ExtraLight'),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  '\$49.49',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: size.width * 0.01,
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 2, right: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: size.width * 0.03,
                                        color: Colors.white,
                                      ),
                                      const Text(
                                        ' 4.9',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          // color: Colors.grey,
                          alignment: Alignment.centerRight,
                          // color: Colors.grey,
                          child: const Icon(
                            Icons.shopping_cart_outlined,
                            size: 25,
                          ),
                        )),
                  ],
                )),
            Expanded(
                flex: 11,
                child: Container(
                  // color: Colors.pink,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            // color: Colors.pink,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // DottedIndicator(size: size),
                                for (int i = 0; i < 4; i++)
                                  DottedIndecator(
                                      size: size,
                                      i: i,
                                      currentSliderIndex: currentSliderIndex),
                              ],
                            ),
                          )),
                      Expanded(
                        flex: 17,
                        child: CarouselSlider(
                          options: CarouselOptions(
                            autoPlay: true,
                            viewportFraction: 1,
                            autoPlayInterval: const Duration(seconds: 5),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 300),
                            onPageChanged: (int index, reason) {
                              setState(() {
                                currentSliderIndex = index;
                              });
                            },
                          ),
                          items: [
                            offerImage(size, 'images/shoe1.png'),
                            offerImage(size, 'images/shoe1.png'),
                            offerImage(size, 'images/shoe1.png'),
                            offerImage(size, 'images/shoe1.png'),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 6,
                child: Container(
                  // color: Colors.blue,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < 3; i++)
                              ViewOption(
                                size: size,
                                i: i,
                                currentOption: currentOption,
                                onTap: (() {
                                  setState(() {
                                    currentOption = i;
                                  });
                                }),
                              )
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 5,
                          child: currentOption == 0
                              ? Product(
                                  colorSelected: colorSelected, size: size)
                              : currentOption == 1
                                  ? const Detailes()
                                  : Review(size: size))
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.015,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 5,
                            child: BottomWithIcon(
                              size: size,
                              text: 'SHARE THIS',
                              backgroundBottomColor: Colors.white,
                              backgroundIconColor:
                                  const Color.fromARGB(255, 101, 100, 100),
                              iconColor: Colors.white,
                              textColor:
                                  const Color.fromARGB(255, 101, 100, 100),
                              icon: Icons.arrow_upward_rounded,
                            )),
                        const Expanded(flex: 1, child: SizedBox()),
                        Expanded(
                            flex: 5,
                            child: BottomWithIcon(
                              size: size,
                              text: 'ADD TO CART',
                              backgroundBottomColor: const Color(0xffFF6969),
                              backgroundIconColor: Colors.white,
                              iconColor: const Color(0xffFF6969),
                              textColor: Colors.white,
                              icon: Icons.arrow_forward_ios,
                            )),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
