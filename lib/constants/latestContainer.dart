import 'package:flutter/material.dart';
import 'package:my_ui/constants/advText.dart';
import 'package:my_ui/constants/bottomWithIcon.dart';

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
                height: size.height * 0.03,
              ),
              if (seemore == true)
                BottomWithIcon(
                  size: size,
                  text: 'SEE MORE',
                  backgroundBottomColor: Color.fromARGB(255, 255, 255, 255),
                  backgroundIconColor: Color(0xffFF6969),
                  iconColor: Colors.white,
                  textColor: Colors.grey,
                  icon: Icons.arrow_forward_ios,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
