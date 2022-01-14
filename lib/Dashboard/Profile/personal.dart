import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user/Dashboard/Profile/profilee.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Personal Details'),
      leading:  IconButton(
          alignment: Alignment.topLeft,
          icon: const Icon(
            Icons.keyboard_arrow_left_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => ProfilePage()));
          },
        ),
      ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15,10,10,10),
            child: ListView(children:  const [
              // Row(children: [
              //   IconButton(
              //     alignment: Alignment.topLeft,
              //     icon: const Icon(
              //       Icons.keyboard_arrow_left_outlined,
              //       color: Colors.black,
              //     ),
              //     onPressed: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (_) => ProfilePage()));
              //     },
              //   ),
              //   const SizedBox(
              //     width: 200,
              //     child: Text(
              //       "Personal Details",
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //         fontSize: 15,
              //         color: Colors.black,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ]),
              SizedBox(height: 20),
              Text(
                "Name",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 7),
              Text(
                "THILAKESH",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Delivery ID",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 7),
              Text(
                "305678",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Kings Dharbar Mobile Number",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 7),
              Text(
                "9876543210",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Joining Date",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 7),
              Text(
                "12/1/2021",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Preferred Languages",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 7),
              Text(
                "English And Tamil",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Languages You Know",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 7),
              Text(
                "English ",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Service Zone",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 7),
              Text(
                "Tri_kattur",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Blood Group",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 7),
              Text(
                "NA",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Alternate Mobile Number",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 7),
              Text(
                "9876543210",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5),
            ]),
          ),
        ),
      ),
    );
  }
}
