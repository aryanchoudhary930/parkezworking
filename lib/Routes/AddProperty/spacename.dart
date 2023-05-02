import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:parkezze/Routes/AddProperty/location.dart';

import '../url.dart';

class Spacename extends StatefulWidget {
  @override
  _SpacenameState createState() => _SpacenameState();
}

class _SpacenameState extends State<Spacename> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController spacenameController = TextEditingController();
  TextEditingController capacityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Name Your Parking Space",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                Text(
                  "Attract travelers with a listing title that highlights what makes your listing special",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 30),
                FormField<String>(
                  key: Key('spacenameField'),
                  initialValue: '',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a space name';
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) {
                    return TextFormField(
                      controller: spacenameController,
                      style: TextStyle(color: Colors.black87, fontSize: 18),
                      decoration: InputDecoration(
                        hintText: "Add Title",
                        errorText: state.errorText,
                      ),
                      onChanged: (value) {
                        state.didChange(value);
                      },
                    );
                  },
                ),
                SizedBox(height: 30),
                FormField<String>(
                  key: Key('capacityField'),
                  initialValue: '',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the space capacity';
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) {
                    return TextFormField(
                      controller: capacityController,
                      style: TextStyle(color: Colors.black87, fontSize: 18),
                      decoration: InputDecoration(
                        hintText: "Enter Space Capacity",
                        errorText: state.errorText,
                      ),
                      onChanged: (value) {
                        state.didChange(value);
                      },
                    );
                  },
                ),
                SizedBox(height: 80),
                Align(
                  alignment: Alignment.bottomRight,
                  child: MaterialButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Location(
                                spacename: spacenameController.text,
                                capacity: capacityController.text),
                          ),
                        );
                      }
                    },
                    elevation: 3,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red,
                      ),
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
