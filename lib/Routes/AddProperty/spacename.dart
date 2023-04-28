import 'package:flutter/material.dart';
import 'package:airbnb_clone/Routes/AddProperty/location.dart';

class Spacename extends StatefulWidget {
  @override
  _SpacenameState createState() => _SpacenameState();
}

class _SpacenameState extends State<Spacename> {
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
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                Text(
                  "Name Your Parking Space",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Attract travelers with a listing title that highlights what makes your listing special",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                  validator: (value) => validate(value),
                  decoration: InputDecoration(
                    hintText: "Add Title",
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: MaterialButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Location()));
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
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      // MediaQuery.of(context).viewInsets.bottom == 0.0
    );
  }
}
