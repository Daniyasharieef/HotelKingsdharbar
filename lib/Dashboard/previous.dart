import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user/Dashboard/weeklylogin.dart';

import 'dashboard.dart';

class PreviousLogin extends StatelessWidget {
  const PreviousLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          backgroundColor:Colors.red,leading:IconButton(
        alignment: Alignment.topLeft,
        icon: const Icon(
          Icons.keyboard_arrow_left_outlined,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => MyHomePage()));
        },
      ),
          centerTitle:true,title:
         const Text(
            "LOGINS HISTORY",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(children: [
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 120,
                  child: Card(
                      shadowColor: Colors.red,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: ListTile(
                        tileColor: Colors.white,
                        title: Text(
                          "Today So Far",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[800],
                              fontWeight: FontWeight.bold),
                        ),
                        contentPadding: const EdgeInsets.all(15),
                        subtitle: Text(
                          "00hr  00m",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.red[800],
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: Text(
                          "0 Shifts",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[800],
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Previous Logins",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Card(
                    shadowColor: Colors.red,
                    elevation: 10,
                    child: ListTile(
                      tileColor: Colors.white12,
                      title: Text(
                        "THIS WEEK",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.red[800],
                            fontWeight: FontWeight.bold),
                      ),
                      contentPadding: const EdgeInsets.all(15),
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
                                  builder: (_) => const WeeklyPage()));
                        },
                      ),
                    )),
                Card(
                    shadowColor: Colors.red,
                    elevation: 10,
                    child: ListTile(
                      tileColor: Colors.transparent,
                      title: Text(
                        "LAST WEEK ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.red[800],
                            fontWeight: FontWeight.bold),
                      ),
                      contentPadding: const EdgeInsets.all(15),
                      // subtitle: Text(
                      //   "00hr  00m",
                      //   style: TextStyle(
                      //       fontSize: 10,
                      //       color: Colors.red[800],
                      //       fontWeight: FontWeight.bold),
                      // ),
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
                                  builder: (_) => const WeeklyPage()));
                        },
                      ),
                    )),
              ]),
            ),
          )),
    );
  }
}
