import 'package:flutter/material.dart';
import 'package:my_ui/constant.dart';
import 'package:my_ui/constants/categoriesTypes.dart';
import 'package:my_ui/constants/smallCategories.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String currentOption = 'profile';
  Expanded icons(
      BuildContext context, Size size, String nameOfIcon, IconData icon) {
    return Expanded(
      child: IconButton(
        onPressed: () {
          Navigator.pushNamed(context, nameOfIcon);
          setState(() {
            currentOption = nameOfIcon;
          });
        },
        icon: Icon(
          icon,
          size: size.width * 0.08,
          color: currentOption == nameOfIcon
              ? primerColor
              : const Color.fromARGB(255, 194, 193, 193),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 13,
              child: Padding(
                  padding: EdgeInsets.all(size.width * 0.05),
                  child: Column(children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.messenger_outline)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.notifications_none)),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 12,
                        child: Container(
                          // color: Colors.amber,
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    // color: Colors.pink,
                                    child: Row(
                                      children: [
                                        const Expanded(
                                            flex: 1,
                                            child: CircleAvatar(
                                              // child: Image.asset('images/profile.png'),
                                              backgroundImage: AssetImage(
                                                  'images/profile.png'),
                                              radius: 65,
                                            )),
                                        Expanded(
                                            flex: 2,
                                            child: Container(
                                              // color: Colors.red,
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  const Text(
                                                    "Jane Doe",
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        letterSpacing: 0.1),
                                                  ),
                                                  const Text(
                                                    "janedoe123@gmail.com",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color.fromARGB(
                                                            255,
                                                            128,
                                                            126,
                                                            126)),
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20,
                                                        vertical: 5),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        border: Border.all(
                                                            color: const Color
                                                                    .fromARGB(
                                                                255,
                                                                203,
                                                                201,
                                                                201))),
                                                    child: const Text(
                                                      'EDIT PROFILE',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    // color: Colors.blue,
                                    padding: EdgeInsets.all(15),

                                    decoration: BoxDecoration(
                                        // color: Colors.red,
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color.fromARGB(86, 0, 0, 0),
                                            spreadRadius: -8,
                                            blurRadius: 15,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            child: Row(
                                          children: [
                                            Icon(
                                              Icons.list_outlined,
                                              color: Colors.grey,
                                            ),
                                            Expanded(
                                              child: SmallCategories(
                                                  mytext: 'All My Orders'),
                                            ),
                                          ],
                                        )),
                                        Expanded(
                                            child: Row(
                                          children: [
                                            Icon(
                                              Icons.pending_actions_outlined,
                                              color: Colors.grey,
                                            ),
                                            Expanded(
                                              child: SmallCategories(
                                                  mytext: 'Pending Shipments'),
                                            ),
                                          ],
                                        )),
                                        Expanded(
                                            child: Row(
                                          children: [
                                            Icon(
                                              Icons.payment_outlined,
                                              color: Colors.grey,
                                            ),
                                            Expanded(
                                              child: SmallCategories(
                                                  mytext: 'Pending Payments'),
                                            ),
                                          ],
                                        )),
                                        Expanded(
                                            child: Row(
                                          children: [
                                            Icon(
                                              Icons.inventory_outlined,
                                              color: Colors.grey,
                                            ),
                                            Expanded(
                                              child: SmallCategories(
                                                  mytext: 'Finished Orders'),
                                            ),
                                          ],
                                        )),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    // color: Colors.blue,
                                    padding: EdgeInsets.all(15),

                                    decoration: BoxDecoration(
                                        // color: Colors.red,
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color.fromARGB(86, 0, 0, 0),
                                            spreadRadius: -8,
                                            blurRadius: 15,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            child: Row(
                                          children: [
                                            Icon(
                                              Icons.local_post_office_outlined,
                                              color: Colors.grey,
                                            ),
                                            Expanded(
                                              child: SmallCategories(
                                                  mytext: 'Invite friends'),
                                            ),
                                          ],
                                        )),
                                        Expanded(
                                            child: Row(
                                          children: [
                                            Icon(
                                              Icons.headset_mic_outlined,
                                              color: Colors.grey,
                                            ),
                                            Expanded(
                                              child: SmallCategories(
                                                  mytext: 'Customer Support'),
                                            ),
                                          ],
                                        )),
                                        Expanded(
                                            child: Row(
                                          children: [
                                            Icon(
                                              Icons.stars_rounded,
                                              color: Colors.grey,
                                            ),
                                            Expanded(
                                              child: SmallCategories(
                                                  mytext: 'Rate Our App'),
                                            ),
                                          ],
                                        )),
                                        Expanded(
                                            child: Row(
                                          children: [
                                            Icon(
                                              Icons.edit,
                                              color: Colors.grey,
                                            ),
                                            Expanded(
                                              child: SmallCategories(
                                                  mytext: 'Make a Suggestion'),
                                            ),
                                          ],
                                        )),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ))
                  ]))),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: Row(children: [
                  icons(context, size, 'home', Icons.home_outlined),
                  icons(context, size, 'search', Icons.search),
                  icons(context, size, 'cart', Icons.shopping_cart_outlined),
                  icons(context, size, 'profile', Icons.person_outlined),
                  icons(context, size, 'menu', Icons.menu),
                ]),
              )),
        ],
      ),
    );
  }
}
