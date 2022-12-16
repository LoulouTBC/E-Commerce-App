import 'package:flutter/material.dart';
import 'package:my_ui/constants/myButton.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  bool sign = true;
  bool log = false;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 240, 239, 239),
      body: Container(
        child: Column(children: [
          Container(
            height: size.height * 0.1,
            margin: EdgeInsets.only(top: size.height * 0.08),
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
                                color: sign == true
                                    ? Colors.black
                                    : Color.fromARGB(42, 0, 0, 0),
                                fontSize: 37,
                                fontWeight: FontWeight.w600))),
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
                      'Log In',
                      style: TextStyle(
                          color: log == true
                              ? Colors.black
                              : Color.fromARGB(42, 0, 0, 0),
                          fontSize: 37,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.05),
            width: size.width * 0.8,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(10),
              child: Form(
                child: Column(
                  children: [
                    const TextField(
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                        icon: Icon(Icons.email_outlined),
                        hintText: ' type your email',
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                    const TextField(
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: ' type your name',
                        labelText: 'USER NAME',
                        labelStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                    TextFormField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                            icon: const Icon(
                              Icons.password,
                              size: 20,
                            ),
                            labelText: 'PASSWORD',
                            labelStyle: TextStyle(color: Colors.grey),
                            hintText: ' type your password',
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye_outlined),
                              onPressed: () {
                                setState(() {
                                  _obscureText == true
                                      ? _obscureText = false
                                      : _obscureText = true;
                                });
                              },
                            ))),
                  ],
                ),
              ),
            ),
          ),
          MyButton(size: size),
          SizedBox(
            height: size.height * 0.04,
          ),
          Column(
            children: [
              Container(
                // color: Colors.amber,
                width: size.width * 0.7,
                child: Text(
                  " By creating an account, you agree to our",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey[600], fontSize: size.height * 0.018),
                ),
              ),
              Container(
                // color: Color.fromARGB(255, 42, 149, 152),
                width: size.width * 0.6,
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: size.width * 0.05,
                      ),
                    ),
                    Container(
                      child: InkWell(
                        child: Text(
                          'Terms of Service',
                          style: TextStyle(
                              color: Color(0xffFF6969),
                              fontSize: size.height * 0.018),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "and  ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: size.height * 0.018),
                      ),
                    ),
                    Container(
                      child: InkWell(
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(
                              color: Color(0xffFF6969),
                              fontSize: size.height * 0.018),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: size.width * 0.05,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
          // Container(child: sign == true ? Text('sign') : Text('Log')),
        ]),
      ),
    );
  }
}


// By creating an account, you agree to our Terms of Service and Privacy Policy