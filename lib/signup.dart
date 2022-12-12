import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  bool sign = true;
  bool log = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Container(
            height: 150,
            margin: EdgeInsets.only(top: 50),
            color: Colors.amber,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (() {
                      setState(() {
                        sign = true;
                        log = false;
                      });
                    }),
                    child: Center(
                        child: Text('Sign UP',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: sign == true
                                    ? FontWeight.w600
                                    : FontWeight.normal))),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (() {
                      setState(() {
                        log = true;
                        sign = false;
                      });
                    }),
                    child: Center(
                        child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: log == true
                              ? FontWeight.w600
                              : FontWeight.normal),
                    )),
                  ),
                ),
              ],
            ),
          ),
          // Container(child: sign == true ? Text('sign') : Text('Log')),
        ]),
      ),
    );
  }
}
