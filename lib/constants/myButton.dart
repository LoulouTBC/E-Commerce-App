import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.size, required this.text,
  }) : super(key: key);

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.02),
      width: size.width * 0.8,
      height: size.height * 0.07,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(91, 224, 140, 140),
              spreadRadius: 3,
              blurRadius: 12,
              offset: Offset(2, 4), // changes position of shadow
            ),
          ]),
      child: MaterialButton(
        color: const Color(0xffFF6969),
        disabledColor: Colors.grey,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        onPressed: () {
          Navigator.pushReplacementNamed(context, "home");
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  <Widget>[
            // If I want it on left

            const Opacity(
              // if I change opacity it will appear
              opacity: 0.0,
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Icon(
                  Icons.arrow_forward_sharp,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 18.0),
            ),
            const CircleAvatar(
              maxRadius: 16,
              // minRadius: 10,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Color(0xffFF6969),
                size: 20,
              ),
            ),
          ],
        ),

        // child: ElevatedButton(
        //   onPressed: () {
        //     Navigator.pushNamed(context, "home");
        //   },
        //   // color: Color(0xFFFF6969),
        //   child: Expanded(
        //     flex: 15,
        //     child: Container(
        //       // color: Colors.amber,
        //       child: Row(
        //         children: [
        //           Expanded(
        //             flex: 16,
        //             child: Container(
        //               child: const Text(
        //                 'Sign UP',
        //                 textAlign: TextAlign.center,
        //                 style:
        //                     TextStyle(color: Colors.white, fontSize: 17),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        //   // SizedBox(
        //   //   width: size.width * 0.54,
        //   // ),
        // ),
      ),
    );
  }
}
