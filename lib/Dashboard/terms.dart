import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(backgroundColor: Colors.red,
              title: const Text(
                "TERMS AND CONDITIONS",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: IconButton(
                alignment: Alignment.topLeft,
                icon: const Icon(
                  Icons.keyboard_arrow_left_outlined,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MyHomePage()));
                },
              ),
            ),
            body: SafeArea(
              child: ListView(children:[
                          Padding(
                            padding: const EdgeInsets.only(top:150,right:10,left:10),
                            child: ListTile(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                tileColor: Colors.red,
                                title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      SizedBox(height: 10),
                                      Text(
                                        "Delivery Partner App",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        "General Terms And Conditions",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Kindly read and agree to the general terms and conditions",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                      Text(
                                        " for Kings Dharbar Delivery Partner App",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                      SizedBox(height: 50),
                                    ]),
                                trailing: IconButton(
                                    alignment: Alignment.topLeft,
                                    icon: const Icon(
                                      Icons.keyboard_arrow_right_outlined,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  ConditionsPage()));
                                    })),
                          )
                        ]),
                  ),
        ));
  }
}

class ConditionsPage extends StatelessWidget {
  const ConditionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Terms.jpg'),
                ),
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: const SizedBox(height: 400),
            ),
          ),
        ));
  }
}
