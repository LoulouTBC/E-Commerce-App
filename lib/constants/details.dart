import 'package:flutter/material.dart';

class Detailes extends StatelessWidget {
  const Detailes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(flex: 1, child: SizedBox()),
        Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'BRAND',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'SKU',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Lily\'s Ankle Boots'),
                    Text('4776666335')
                  ],
                ),
              ],
            )),
        Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'BRAND',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'SKU',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Lily\'s Ankle Boots'),
                    Text('4776666335')
                  ],
                ),
              ],
            )),
        Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'BRAND',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'SKU',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Lily\'s Ankle Boots'),
                    Text('4776666335')
                  ],
                ),
                // Divider(
                //   // height: 1,
                //   thickness: 0.3,
                //   color: Color.fromARGB(
                //       255, 224, 219, 219),
                // ),
              ],
            )),
      ],
    );
  }
}
