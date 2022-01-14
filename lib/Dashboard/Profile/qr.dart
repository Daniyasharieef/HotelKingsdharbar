import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user/Dashboard/Profile/profilee.dart';

class QrPage extends StatelessWidget {
  const QrPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(backgroundColor: Colors.red[200],
        body: SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(children: [
                IconButton(
                  alignment: Alignment.topLeft,
                  icon: const Icon(
                    Icons.keyboard_arrow_left_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const ProfilePage()));
                  },
                ),
                const Text(
                  " QR CODE",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
              const SizedBox(height:10,),
              IconButton(
                alignment: Alignment.topLeft,
                icon: Icon(
                  Icons.person_outlined,
                  color: Colors.red[900],
                  size: 40,
                ),
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(
                  //         builder: (_) =>
                  //         const HomeTabPage()));
                },
              ),
              const SizedBox(height: 15,width:40),
              const Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: 15,width:40),
              const Text(
                'Delivery ID',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
      SizedBox(
          height: 250,
          child: Container(
            height: 400,
            width: 400,
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/QRCode.jpg'),
              ),
            ),
            child: const SizedBox(height: 400),
          ),),
              const SizedBox(height: 20), const Text(
                'Scan this QRCode To Pay',
                style: TextStyle( color: Colors.black),
              ),
              const SizedBox(width: 50),
            ],
          ),
        ),

        ));
  }
}
