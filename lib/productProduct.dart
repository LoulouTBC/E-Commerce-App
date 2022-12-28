import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_ui/constants/dottedIndicator.dart';

class ProductProduct extends StatefulWidget {
  const ProductProduct({super.key});

  @override
  State<ProductProduct> createState() => _ProductProductState();
}

class _ProductProductState extends State<ProductProduct> {
  int currentSliderIndex = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(size.height * 0.03),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  // color: Colors.amber,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            // color: Colors.black,
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              size: 25,
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            // color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  // color: Colors.amber,
                                  child: Text(
                                    'Faux Sued Ankle Boots',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontFamily: 'Manrope-ExtraLight'),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  // color: Colors.grey,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '\$49.49',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.01,
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 2, right: 5),
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: size.width * 0.03,
                                              color: Colors.white,
                                            ),
                                            Text(
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
                                ),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            // color: Colors.grey,
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              size: 25,
                            ),
                            alignment: Alignment.centerRight,
                          )),
                    ],
                  ),
                )),
            Expanded(
                flex: 6,
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
                        flex: 15,
                        child: CarouselSlider(
                          options: CarouselOptions(
                            autoPlay: true,
                            viewportFraction: 1,
                            autoPlayInterval: Duration(seconds: 5),
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
                  color: Colors.blue,
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.amber,
                )),
          ],
        ),
      ),
    );
  }

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
}
