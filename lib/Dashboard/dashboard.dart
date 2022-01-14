import 'dart:async';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:location/location.dart' as loc;
import 'package:permission_handler/permission_handler.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:user/Dashboard/Profile/profilee.dart';
import 'package:user/Dashboard/payment.dart';
import 'package:user/Dashboard/previous.dart';
import 'package:user/Dashboard/refer.dart';
import 'package:user/Dashboard/shifts.dart';
import 'package:user/Dashboard/terms.dart';
import 'package:user/Dashboard/tips.dart';
import 'details.dart';
import 'earnings.dart';
import 'logout.dart';
import 'notification.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final loc.Location location = loc.Location();
  StreamSubscription<loc.LocationData>? _locationSubscription;

  @override
  void initState() {
    super.initState();
    _requestPermission();
    location.changeSettings(interval: 300, accuracy: loc.LocationAccuracy.high);
    location.enableBackgroundMode(enable: true);
  }
  bool status = false;

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Kings Dharbar",
            style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          backgroundColor: Colors.black,
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.notifications,
                color: Colors.red,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const NotificationPage()));
              },
            )
          ],
        ),
        body:  DetailsPage(),
        drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 250.0,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                margin: const EdgeInsets.only(top: 10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 2),
                      Stack(children: [
                        Center(
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                              child: CircleAvatar(
                                radius: 37,
                                backgroundColor: Colors.white.withOpacity(
                                  0.4,
                                ),
                                child: IconButton(
                                  alignment: Alignment.topCenter,
                                  icon: const Icon(
                                    Icons.person_outline,
                                    color: Colors.red,
                                    size: 35,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                      const SizedBox(height: 10),
                      const Text(
                        'Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const SizedBox(height: 5),
                       Text(
                         FirebaseAuth.instance.currentUser==null ?"":FirebaseAuth.instance.currentUser!.uid ,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const Divider(
                          height: 10, thickness: 0.4, color: Colors.black54),
                      const SizedBox(height: 20),
                      Row(children: [
                        const SizedBox(width: 10),
                        const Text(
                          "Duty Status",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        FlutterSwitch(
                          height: 30.0,
                          width: 70.0,
                          padding: 7.0,
                          toggleSize: 15.0,
                          borderRadius: 20.0,
                          valueFontSize: 10.0,
                          value: status,
                          activeColor: Colors.white54,
                          inactiveColor: Colors.white38,
                          onToggle:_getLocation()
                          //     (val) {
                          //   setState(() {
                          //     status = val;
                          //   });
                          // },
                        ),
                      ]),
                    ]),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person_outlined,
                color: Colors.red,
              ),
              title: const Text('My Profile'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.calendar_today_rounded,
                color: Colors.red,
              ),
              title: const Text('My Shifts'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShiftsPage()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.payments_outlined,
                color: Colors.red,
              ),
              title: const Text('Earnings And Incentives'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EarningsPage()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.attach_money_outlined,
                color: Colors.red,
              ),
              title: const Text('Floating Cash'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentPage()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.account_balance_wallet_outlined,
                color: Colors.red,
              ),
              title: const Text('Customers Tips'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TipsPage()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.filter_tilt_shift_sharp,
                color: Colors.red,
              ),
              title: const Text('Login History'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PreviousLogin()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout_outlined,
                color: Colors.red,
              ),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LogOutPage()));
              },
            ),
            ListTile(
              title: const Text('Terms And Conditions'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TermsPage()));
              },
            ),
            ListTile(
              title: const Text('Refer a Friend'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ReferPage()));
              },
            ),
          ],
        )),
      ),
    );
  }
}

_getLocation() async {
  var syed = FirebaseAuth.instance;
  print("syed");
  print(syed.currentUser!.uid);
    final loc.LocationData _locationResult = await loc.Location().getLocation();
    DatabaseReference reference = FirebaseDatabase.instance.ref("Delivery Partner");
var data ={
      'latitude': _locationResult.latitude,
      'longitude': _locationResult.longitude,
      'locations': _locationResult
    };  reference.child(syed.currentUser!.uid).child("locations").set(data).then((v) {
  // formKey.currentState!.reset();
  print("Done");
  }).onError((onError,s){
  print(s.toString());
  });
}

_requestPermission() async {
  var status = await Permission.location.request();
  if (status.isGranted) {
    print('done');
  } else if (status.isDenied) {
    _requestPermission();
  } else if (status.isPermanentlyDenied) {
    openAppSettings();
  }
}