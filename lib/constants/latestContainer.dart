import 'package:flutter/material.dart';
import 'package:my_ui/constants/advText.dart';

class LatestContainer extends StatelessWidget {
  const LatestContainer(
      {Key? key,
      required this.size,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.seemore})
      : super(key: key);

  final Size size;
  final String image;
  final String text1, text2, text3;
  final bool seemore;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: size.width * 0.03),
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('images/$image')),
        borderRadius: BorderRadius.circular(16),
      ),
      width: size.width * 0.84,
      child: Padding(
        padding:
            EdgeInsets.only(left: size.width * 0.06, top: size.width * 0.045),
        child: Container(
          width: size.width * 0.3,
          alignment: Alignment.topLeft,
          child: Column(
            // mainAxisAlignment:
            //     MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AdvText(
                advText: text1,
              ),
              AdvText(advText: text2),
              AdvText(advText: text3),
              SizedBox(
                height: size.height * 0.04,
              ),
              if (seemore == true)
                Container(
                  width: size.width * 0.35,
                  height: size.height * 0.06,
                  // decoration: BoxDecoration(
                  // borderRadius:
                  //     BorderRadius.circular(30),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Color.fromARGB(
                  //         91, 255, 105, 105),
                  //     spreadRadius: 3,
                  //     blurRadius: 12,
                  //     offset: Offset(2,
                  //         4), // changes position of shadow
                  //   ),
                  // ]
                  // ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: MaterialButton(
                      color: Color.fromARGB(255, 255, 255, 255),
                      disabledColor: Colors.grey,
                      // shape:
                      //     const RoundedRectangleBorder(
                      //   borderRadius:
                      //       BorderRadius.all(
                      //     Radius.circular(30),
                      //   ),
                      // ),
                      onPressed: () {
                        Navigator.pushNamed(context, "home");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          // If I want it on left

                          Text(
                            "SEE MORE",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: size.width * 0.036),
                          ),
                          CircleAvatar(
                            maxRadius: size.width * 0.035,
                            // minRadius: 10,
                            backgroundColor: Color(0xffFF6969),
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: size.width * 0.035,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
