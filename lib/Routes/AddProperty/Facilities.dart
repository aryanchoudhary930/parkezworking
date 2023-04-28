import 'package:airbnb_clone/Routes/AddProperty/Photo.dart';
import 'package:flutter/material.dart';

class Facilities extends StatefulWidget {
  @override
  _FacilitiesState createState() => _FacilitiesState();
}

class _FacilitiesState extends State<Facilities> {
  var indoor = false;
  var washroom = false;
  var valet = false;
  // ignore: non_constant_identifier_names
  var drop_pickup = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
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
                height: 50,
              ),
              Text(
                "Available Facilities At Your Space ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Indoor",
                        style: TextStyle(fontSize: 15),
                      ),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: indoor ? Colors.blue : Colors.black12),
                          child: indoor
                              ? Icon(
                                  Icons.check,
                                  size: 30.0,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.check,
                                  size: 30.0,
                                  color: Colors.white,
                                )),
                    ],
                  ),
                ),
                onTap: () {
                  setState(() {
                    indoor = !indoor;
                  });
                },
              ),
              SeparateurHorizontal(),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "WashRoom",
                        style: TextStyle(fontSize: 15),
                      ),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: washroom ? Colors.blue : Colors.black12),
                          child: washroom
                              ? Icon(
                                  Icons.check,
                                  size: 30.0,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.check,
                                  size: 30.0,
                                  color: Colors.white,
                                )),
                    ],
                  ),
                ),
                onTap: () {
                  setState(() {
                    washroom = !washroom;
                  });
                },
              ),
              SeparateurHorizontal(),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Valet",
                        style: TextStyle(fontSize: 15),
                      ),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: valet ? Colors.blue : Colors.black12),
                          child: valet
                              ? Icon(
                                  Icons.check,
                                  size: 30.0,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.check,
                                  size: 30.0,
                                  color: Colors.white,
                                )),
                    ],
                  ),
                ),
                onTap: () {
                  setState(() {
                    valet = !valet;
                  });
                },
              ),
              SeparateurHorizontal(),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Drop And PickUp Facility",
                        style: TextStyle(fontSize: 15),
                      ),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  drop_pickup ? Colors.blue : Colors.black12),
                          child: drop_pickup
                              ? Icon(
                                  Icons.check,
                                  size: 30.0,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.check,
                                  size: 30.0,
                                  color: Colors.white,
                                )),
                    ],
                  ),
                ),
                onTap: () {
                  setState(() {
                    drop_pickup = !drop_pickup;
                  });
                },
              ),
              SeparateurHorizontal(),
            ],
          ),
        ),
      ),
      floatingActionButton: MaterialButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Photo()),
          );
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

  // ignore: non_constant_identifier_names
  Container SeparateurHorizontal() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      height: 0.3,
      color: Colors.grey,
    );
  }
}
