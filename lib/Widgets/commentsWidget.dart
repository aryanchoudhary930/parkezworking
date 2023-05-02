import 'package:flutter/material.dart';

// ignore: camel_case_types
class commentsWidget extends StatefulWidget {
  @override
  _commentsWidgetState createState() => _commentsWidgetState();
}

// ignore: camel_case_types
class _commentsWidgetState extends State<commentsWidget> {
  int _maxlines = 3;
  late String comment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(25, 0, 25, 10),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "I recently rented a parking space from Satyam and it was a great experience. The location was very convenient for me.",
              style: TextStyle(
                  color: Colors.black, fontSize: 15.5, letterSpacing: 0.2),
              overflow: TextOverflow.ellipsis,
              maxLines: _maxlines,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              child: Text(_maxlines <= 3 ? "" : "Afficher moins",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w500)),
              onTap: () {
                setState(() {
                  if (_maxlines == 3)
                    _maxlines = 35;
                  else
                    _maxlines = 3;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
