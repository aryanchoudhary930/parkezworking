import 'package:airbnb_clone/Routes/AddProperty/Facilities.dart';
import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  final formKey = GlobalKey<FormState>();
  // ignore: body_might_complete_normally_nullable
  String? validate(value) {
    if (value!.isEmpty) return 'required';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black87,
                    size: 23,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Parking Space Location",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "This is the Position That User Sees",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                  child: MaterialButton(
                    color: Colors.white,
                    elevation: 5,
                    onPressed: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black87),
                      ),
                      child: Text(
                        "Use Current Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Country/Region",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.black87, fontSize: 18),
                        validator: (value) => validate(value),
                        decoration: InputDecoration(),
                      ),
                      //separateurHorizontal(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "State",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.black87, fontSize: 18),
                        validator: (value) => validate(value),
                        decoration: InputDecoration(),
                      ),
                      //separateurHorizontal(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "District",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.black87, fontSize: 18),
                        validator: (value) => validate(value),
                        decoration: InputDecoration(),
                      ),
                      //separateurHorizontal(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Street",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.black87, fontSize: 18),
                        validator: (value) => validate(value),
                        decoration: InputDecoration(),
                      ),
                      //separateurHorizontal(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Property Number",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.black87, fontSize: 18),
                        validator: (value) => validate(value),
                        decoration: InputDecoration(),
                      ),
                      //separateurHorizontal(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Postal Code",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.black87, fontSize: 18),
                        validator: (value) => validate(value),
                        decoration: InputDecoration(),
                      ),
                      //separateurHorizontal(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: MaterialButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            // If the form is valid, display a snackbar. In the real world,
            // you'd often call a server or save the information in a database
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Facilities()));
          }
        },
        elevation: 3,
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.red,
            ),
            child: Text(
              "Submit",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }

  Container separateurHorizontal() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      height: 1,
      color: Colors.black12,
    );
  }
}
