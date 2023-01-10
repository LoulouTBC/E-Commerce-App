import 'package:flutter/material.dart';
import 'package:my_ui/constants/smallCategories.dart';

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
                  children:  [
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
