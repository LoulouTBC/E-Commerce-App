import 'package:flutter/material.dart';
import 'package:my_ui/constant.dart';

class BottomBar extends StatefulWidget {
  final String current;
  BottomBar({super.key, required this.current});

  @override
  State<BottomBar> createState() => _BottomBarState(current);
}

class _BottomBarState extends State<BottomBar> {
  // String currentOption =widget.current;//widget can't be used outside the build method

  String current;
  _BottomBarState(this.current);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      child: Row(children: [
        icons(
          context,
          size,
          'home',
          Icons.home_outlined,
        ),
        icons(
          context,
          size,
          'search',
          Icons.search,
        ),
        icons(
          context,
          size,
          'cart',
          Icons.shopping_cart_outlined,
        ),
        icons(
          context,
          size,
          'profile',
          Icons.person_outlined,
        ),
        icons(
          context,
          size,
          'menu',
          Icons.menu,
        ),
      ]),
    );
  }

  Expanded icons(
    BuildContext context,
    Size size,
    String nameOfIcon,
    IconData icon,
  ) {
    return Expanded(
      child: IconButton(
        onPressed: () {
          Navigator.pushNamed(context, nameOfIcon);
          setState(() {
            current = nameOfIcon;
          });
        },
        icon: Icon(
          icon,
          size: size.width * 0.08,
          color: widget.current == nameOfIcon
              ? primerColor
              : const Color.fromARGB(255, 194, 193, 193),
        ),
      ),
    );
  }
}
