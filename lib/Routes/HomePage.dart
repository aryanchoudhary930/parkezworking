import 'package:parkezze/Constants/Constants.dart';
import 'package:parkezze/Routes/Profile.dart';
import 'package:parkezze/Routes/Messages.dart';
import 'package:parkezze/Routes/Properties.dart';
import 'package:parkezze/Routes/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class HomePage extends StatefulWidget {
  final token;
  const HomePage({@required this.token, Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => HomePageState();
}

void main() => runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
          theme: ThemeData(
              primaryColor: Constants.greenParkz,
              scaffoldBackgroundColor: Colors.orange[400],
              colorScheme: ColorScheme.fromSwatch()
                  .copyWith(secondary: Constants.redParkz))),
    );

class HomePageState extends State<HomePage> {
  int _currentTab = 0;
  List<Widget> _children = [Properties(), Messages(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE7EBEE),
      body: SafeArea(
        child: _children[_currentTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          selectedItemColor: Constants.greenParkz,
          unselectedItemColor: Colors.grey[800],
          type: BottomNavigationBarType.fixed,
          onTap: (int value) {
            setState(() {
              _currentTab = value;
            });
          },
          currentIndex: _currentTab,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  //color: Colors.black,
                  size: 30,
                ),
                label: "EXPLORE"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble_outline,
                  size: 30,
                ),
                label: "MESSAGES"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  size: 30,
                ),
                label: "PROFILE")
          ]),
    );
  }
}
