import 'package:parkezze/Routes/AddProperty.dart';
import 'package:flutter/material.dart';

class Photo extends StatefulWidget {
  @override
  _PhotoState createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:25,horizontal: 25 ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back,color: Colors.black87,size: 23,),
                onPressed: (){
                  Navigator.pop(context);
                },),
              SizedBox(height: 30,),
              Text("Add Photos of Your Space",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
              SizedBox(height: 20,),
              Text("Photos help travelers project themselves into your accommodation. You can start with one photo and add more after posting",style: TextStyle(fontSize: 18,color:Colors.black87,fontWeight: FontWeight.w400),),
              SizedBox(height: 30,),
              MaterialButton(
                onPressed: (){
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ()),
                    );*/
                },
                elevation: 3,
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red,
                    ),
                    child: Text("Upload",style: TextStyle(color: Colors.white),)),
              ),
              SizedBox(height: 25,),
              Align(
                alignment: Alignment.centerRight,
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddProperty()),
                    );
                  },
                  elevation: 3,
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.red)

                      ),
                      child: Text("Later",style: TextStyle(color: Colors.red),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}