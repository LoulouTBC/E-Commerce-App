import 'package:flutter/material.dart';

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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 240, 239, 239),
      body: Container(
        child: Column(children: [
          Container(
            height: 100,
            margin: EdgeInsets.only(top: 50),
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
            height: 200,
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
                        decoration: const InputDecoration(
                      icon: Icon(
                        Icons.password,
                        size: 20,
                      ),
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(color: Colors.grey),
                      hintText: ' type your password',
                      border: InputBorder.none,
                    )),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            margin: EdgeInsets.only(top: size.height * 0.02),
            width: size.width * 0.8,
            height: size.height * 0.07,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "home");
                },
                // color: Color(0xFFFF6969),
                child: Expanded(
                  flex: 15,
                  child: Container(
                    // color: Colors.amber,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 16,
                          child: Container(
                            child: const Text(
                              'Sign UP',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            // height: 50,
                            // width: 60,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 30,
                              color: Color(0xFFFF6969),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   width: size.width * 0.54,
                // ),
              ),
            ),
          ),
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
                ),
              ),
              Container(
                // color: Colors.amber,
                width: size.width * 0.6,
                child: Row(
                  children: const [
                    InkWell(
                      child: Text(
                        'Terms of Service ',
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                    Text(
                      "and ",
                      textAlign: TextAlign.center,
                    ),
                    InkWell(
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(color: Colors.purple),
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