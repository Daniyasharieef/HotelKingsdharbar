import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'frnd.dart';

class ReferPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.red,
                leading: IconButton(
                  alignment: Alignment.topLeft,
                  icon: const Icon(
                    Icons.keyboard_arrow_left_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => MyHomePage()));
                  },
                ),
                centerTitle: true,
                title: const Text(
                  "REFER A FRIEND",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            body: SafeArea(
              child: Center(
                child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      SizedBox(
                        height: 400,
                        child: Container(
                          height: 300,
                          width: 300,
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(3.0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/frnd.jpg'),
                            ),
                          ),
                          // height: MediaQuery.of(context).size.height,
                          // width: MediaQuery.of(context).size.width,
                          child: const SizedBox(height: 400),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "REFER YOUR FRIEND TO KINGS DHARBAR",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        child: const Text(
                          'REFER NOW',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          fixedSize: const Size(300, 40),
                          primary: Colors.black,
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  FriendsPage()));
                        },
                      ),
                    ])),
              ),
            )));
  }
}
