import 'package:flutter/material.dart';
import 'package:my_ui/bottomBar.dart';
import 'package:my_ui/constant.dart';
import 'package:my_ui/constants/smallCategories.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushNamedAndRemoveUntil(
            context, 'home', (Route<dynamic> route) => false);
        return false;
      },
      child: Scaffold(
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
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: const Text(
                                    "More",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        // backgroundColor: Colors.white,
                                        fontFamily: "Prompt",
                                        fontSize: 29,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 1),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    // color: Colors.blue,
                                    padding: const EdgeInsets.all(15),

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
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            child: Row(
                                          children: [
                                            const Icon(
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
                                            const Icon(
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
                                            const Icon(
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
                                            const Icon(
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
                              const SizedBox(
                                height: 20,
                              ),
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    // color: Colors.blue,
                                    padding: const EdgeInsets.all(15),

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
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            child: Row(
                                          children: [
                                            const Icon(
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
                                            const Icon(
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
                                            const Icon(
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
                                            const Icon(
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
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    // color: Colors.blue,
                                    alignment: Alignment.center,
                                    child: InkWell(
                                      child: Text(
                                        'LOG OUT',
                                        style: TextStyle(color: primerColor),
                                      ),
                                    ),
                                  )),
                            ],
                          ))
                    ]))),
            Expanded(flex: 1, child: BottomBar(current: 'menu')),
          ],
        ),
      ),
    );
  }
}
