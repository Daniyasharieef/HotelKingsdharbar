import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user/Dashboard/Profile/profilee.dart';

import '../dashboard.dart';

class BankPage extends StatelessWidget {
  const BankPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: const Text(
            "Banks And Payments Information",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),leading: IconButton(
              alignment: Alignment.topLeft,
              icon: const Icon(
                Icons.keyboard_arrow_left_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ProfilePage()));
              },
            ),
        ),
            body: SafeArea(
              child:
                 Padding(
                   padding: const EdgeInsets.all(18.0),
                   child: ListView(
                        children: [
                          const SizedBox(height: 20),
                          const Text(
                            "Bank Details",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const SizedBox(height: 10),
                          Container(
                              width: 400,
                              color: Colors.red[200],
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    SizedBox(height: 10),
                                    Text(
                                      "Account Holder Name",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 7),
                                    Text(
                                      "NAME",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "Account number",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 7),
                                    Text(
                                      "9761937686283",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "BANK NAME",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 7),
                                    Text(
                                      "City Union Bank ",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "BRANCH IFSC CODE",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 7),
                                    Text(
                                      "DE5976976349769",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "PAN CARD NUMBER",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 7),
                                    Text(
                                      "BDCPT46439",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    SizedBox(height: 20),
                                  ],
                                ),
                              )),
                        ]),
                 ),
                )
              ),
            );
  }
}
