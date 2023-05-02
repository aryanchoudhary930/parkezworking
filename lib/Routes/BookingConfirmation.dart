import 'package:flutter/material.dart';
import 'package:parkezze/Routes/HomePage.dart';

class BookingConfirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Confirmation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/properties/confirm.png',
                height: 25.0,
                width: 25.0,
              ),
              SizedBox(width: 10.0),
              Text(
                'Booking Confirmed',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Image.asset(
            'assets/images/properties/confirm1.jpg',
            height: 260.0,
            width: 260.0,
          ),
          SizedBox(height: 30.0),
          Text(
            'Congratulations! on booking your space from Park Ezee. Your space has been booked successfully',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 30.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
              ),
              textStyle: MaterialStateProperty.all<TextStyle>(
                TextStyle(fontSize: 20.0),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.teal[300]!,
              ),
            ),
            child: Text('Go To Home'),
          ),
        ],
      ),
    );
  }
}
