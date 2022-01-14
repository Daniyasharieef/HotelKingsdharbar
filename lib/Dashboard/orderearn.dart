import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'earnings.dart';

class EarnOrderPage extends StatelessWidget {
  const EarnOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.red[200],
            body: SafeArea(
              child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(children: [
                  IconButton(
                    alignment: Alignment.topLeft,
                    icon: const Icon(
                      Icons.keyboard_arrow_left_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => EarningsPage()));
                    },
                  ),
                  const Text(
                    "WEEKLY EARNINGS DETAILS",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ]),
                const SizedBox(height: 20),
                Container(
                  height: 150.0,
                  child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(
                          elevation: 5.0,
                          child: Container(
                            height: MediaQuery.of(context).size.width / 3,
                            width: MediaQuery.of(context).size.width / 3,
                            alignment: Alignment.center,
                            child: const Text("₹ 0 Total Earnings",textAlign: TextAlign.center,),
                          ),
                        ),
                        Card(
                          elevation: 5.0,
                          child: Container(
                            height: MediaQuery.of(context).size.width / 3,
                            width: MediaQuery.of(context).size.width / 3,
                            alignment: Alignment.center,
                            child: const Text("₹ 0 Order Earnings",textAlign: TextAlign.center,),
                          ),
                        ),
                        Card(
                          elevation: 5.0,
                          child: Container(
                            height: MediaQuery.of(context).size.width / 3,
                            width: MediaQuery.of(context).size.width / 3,
                            alignment: Alignment.center,
                            child: const Text("₹ 0 Tips"),
                          ),
                        ),
                        Card(
                          elevation: 5.0,
                          child: Container(
                            height: MediaQuery.of(context).size.width / 3,
                            width: MediaQuery.of(context).size.width / 3,
                            alignment: Alignment.center,
                            child: const Text("₹ 0 Incentives"),
                          ),
                        ),
                        Card(
                          elevation: 5.0,
                          child: Container(
                            height: MediaQuery.of(context).size.width / 3,
                            width: MediaQuery.of(context).size.width / 3,
                            alignment: Alignment.center,
                            child: const Text(" ₹ 0 Adjustments"),
                          ),
                        ),
                      ]),

                ),const SizedBox(height:150),
                const Text(
                  "Orders Not available for this week",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),
                )
              ]),
            )));
  }
}
