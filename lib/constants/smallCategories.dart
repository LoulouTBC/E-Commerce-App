import 'package:flutter/material.dart';

class SmallCategories extends StatelessWidget {
  final String mytext;
  IconData? icon;
  SmallCategories({Key? key, required this.mytext, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        // decoration: const BoxDecoration(
        //   border: Border(
        //     bottom: BorderSide(color: Colors.grey, width: 0.08),
        //     // top: BorderSide(color: Colors.grey, width: 0.4),
        //   ),
        // ),
        // color: Colors.pink,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Icon(
            //   icon,
            //   color: Color.fromARGB(255, 124, 124, 124),
            // ),
            // SizedBox(
            //   width: 15,
            // ),

            Text(
              mytext,
              style: const TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 124, 124, 124)),
            ),

            const CircleAvatar(
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
