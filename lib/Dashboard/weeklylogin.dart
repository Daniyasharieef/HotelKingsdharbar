import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user/Dashboard/previous.dart';

class WeeklyPage extends StatefulWidget {
  const WeeklyPage({Key? key}) : super(key: key);

  @override
  WeeklyPageState createState() => WeeklyPageState();
}

class WeeklyPageState extends State<WeeklyPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text(
              "LOGIN HISTORY",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: IconButton(
              alignment: Alignment.topLeft,
              icon: const Icon(
                Icons.keyboard_arrow_left_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => PreviousLogin()));
              },
            ),
          ),
          body: SafeArea(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                child: ListView.builder(
                    padding: const EdgeInsets.all(15),
                    itemCount: 1,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(children: [
                        ListTile(
                          tileColor: Colors.red[100],
                          title: const Text(
                            "YESTERDAY",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            " Shifts",
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const PreviousLogin()));
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        ListTile(
                          tileColor: Colors.red[100],
                          title: const Text(
                            "Nov 29- Dec 04",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            " Shifts",
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const PreviousLogin()));
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                      ]);
                    }))
          ])),
        ));
  }
}
