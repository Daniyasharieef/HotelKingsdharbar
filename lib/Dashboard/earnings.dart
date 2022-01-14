import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'orderearn.dart';

class EarningsPage extends StatelessWidget {
  const EarningsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              centerTitle: true,
              title:   const Text(
                "EARNINGS AND INCENTIVES",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading:  IconButton(
                alignment: Alignment.topLeft,
                icon: const Icon(
                  Icons.keyboard_arrow_left_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MyHomePage()));
                },
              ),
            ),
            body: SafeArea(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView( children: [
                  const SizedBox(height: 20),
                  Container(
                      width: 500,
                      color: Colors.white38,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                const Text(
                                  " 01 Dec - 10 Dec",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 7),
                                const Text(
                                  "This weeks Earnings",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                ListTile(
                                  tileColor: Colors.red,
                                  title: const Text(
                                    "Payment History",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  trailing: IconButton(
                                    alignment: Alignment.topLeft,
                                    icon: const Icon(
                                      Icons.keyboard_arrow_left_outlined,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (_) =>  const PaymentsEarns()));
                                    },
                                  ),
                                ),
                              ]))),
                  const SizedBox(height: 10),
                  Container(
                      width: 500,
                      color: Colors.white38,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                const Text(
                                  "29 Nov - 05 Dec",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 7),
                                const Text(
                                  "Last weeks Earnings",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                ListTile(
                                  tileColor: Colors.red,
                                  title: const Text(
                                    "Payment History",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  trailing: IconButton(
                                    alignment: Alignment.topLeft,
                                    icon: const Icon(
                                      Icons.keyboard_arrow_left_outlined,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (_) =>  const EarnOrderPage()));
                                    },
                                  ),
                                ),
                              ]))),
                ]),
              ),
            )));
  }
}

class PaymentsEarns extends StatelessWidget {
  const PaymentsEarns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        backgroundColor: Colors.red[200],
        body: const Center(
          child: Text(
      "You have No earnings for this week",
      textAlign: TextAlign.center,
            style: TextStyle(fontSize:20,
              fontWeight:FontWeight.bold,color:Colors.black,
    ))),
        ));
  }
}
