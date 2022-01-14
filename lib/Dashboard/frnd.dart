import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:user/Dashboard/refer.dart';

class FriendsPage extends StatefulWidget {
  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool _autovalidate = false;

  String? Fullname;

  String? city;

  String? phoneNumber;

  TextEditingController frndnameController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController cityController = TextEditingController();
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
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => ReferPage()));
                },
              ),
              centerTitle: true,
              title:const  Text(
                "REFER A FRIEND",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: SafeArea(
            child: Form(
    autovalidateMode: AutovalidateMode.always,
    key: formkey,
              child: SingleChildScrollView(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            " ENTER FRIENDS BASIC INFORMATION",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[800],
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            " FULL NAME",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[800],
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller:frndnameController ,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                labelText: " Enter Full Name",
                                labelStyle:
                                    const TextStyle(color: Colors.black),
                                fillColor: Colors.red,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                //fillColor: Colors.green
                              ), onSaved: (val) {
                            Fullname = val;
                          },
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: "* Required Field"),
                              ])),
                          const SizedBox(height: 15),
                          Text(
                            " MOBILE NUMBER",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[800],
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                              controller: phoneNoController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: " Enter Mobile Number",
                                labelStyle:
                                    const TextStyle(color: Colors.black),
                                fillColor: Colors.red,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                //fillColor: Colors.green
                              ),
                              onSaved: (val) {
                                phoneNumber = val;
                              },
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: "* Required Field"),
                              ])),
                          const SizedBox(height: 15),
                          Text(
                            " CITY",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[800],
                            ),
                          ),
                          TextFormField(
                            controller: cityController,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                labelText: " Enter City",
                                labelStyle:
                                    const TextStyle(color: Colors.black),
                                fillColor: Colors.red,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                //fillColor: Colors.green
                              ),
                              onSaved: (val) {
                                city = val;
                              },
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: "* Required Field"),
                              ])),
                          const SizedBox(height: 15),
                          Center(
                            child: ElevatedButton(
                              onPressed: _sendToServer,
                              child: const Text(
                                'SAVE ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              style: TextButton.styleFrom(
                                fixedSize: const Size(100, 20),
                                primary: Colors.white,
                                backgroundColor: Colors.red[800],
                              ),
                            ),
                          ),
                          Text(
                            " Rules And Conditions",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red[800],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                color: Colors.red,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      SizedBox(height: 10),
                                      Text(
                                        "Rule 1",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 7),
                                      Text(
                                        "You will get referral amount only if you are a Active person of the Kings Dharbar Delivery  Partner App ",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "Rule 2",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 7),
                                      Text(
                                        "You Referral Friend should be a new candidate",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                    ],
                                  ),
                                )),
                          ),
                        ]),
                  ),
                ),
              ),
            ))));
  }

  _sendToServer() async{
    var syed = FirebaseAuth.instance;
    print("syed");
    print(syed.currentUser!.uid);
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      DatabaseReference reference = FirebaseDatabase.instance.ref("Delivery Partner");
      var data = {
        "name": Fullname,
        "phoneNo": phoneNumber,
        "city":city,

      };
      print(data);
      // List<Map<String,dynamic>> result = [];
      // _myActivities.forEach((item) {
      //   result.add(item.toJson());
      // });
      reference.child(syed.currentUser!.uid).child("reffrnd").set(data).then((v) {
        // formKey.currentState!.reset();
        print("Done");
      }).onError((onError,s){
        print(s.toString());
      });
    } else {
      setState(() {
        _autovalidate = true;
      });
    }
  }
  // _sendToServer() {
  //   if (formkey.currentState!.validate()) {
  //     formkey.currentState!.save();
  //     DatabaseReference ref = FirebaseDatabase.instance.ref();
  //     var data = {
  //       "name": Fullname,
  //       "phoneNo": phoneNumber,
  //       "city":city,
  //     };
  //     ref.child('Friend Ref').push().set(data).then((v) {
  //       formkey.currentState!.reset();
  //     });
  //   } else {
  //     setState(() {
  //       _autovalidate = true;
  //     });
  //   }
  // }
}


