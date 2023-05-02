import 'dart:convert';

import 'package:parkezze/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'url.dart';

import 'HomePage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isNotValidate = false;
  late SharedPreferences prefs;

  bool _inscription = false;
  BoxDecoration customDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 2),
          blurRadius: 5,
        )
      ],
    );
  }

  void registerUser() async {
    if (emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        nameController.text.isNotEmpty &&
        phoneController.text.isNotEmpty) {
      var regBody = {
        "name": nameController.text,
        "email": emailController.text,
        "phone": phoneController.text,
        "password": passwordController.text,
      };
      var response = await http.post(Uri.parse(registration),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(regBody));
      var jsonResponse = jsonDecode(response.body);
      print(jsonResponse['status']);
      if (jsonResponse['status']) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login()));
      } else {
        print("SomeThing Went Wrong");
      }
    } else {
      setState(() {
        _isNotValidate = true;
      });
    }
  }

  void loginUser() async {
    _isNotValidate = true;
    prefs = await SharedPreferences.getInstance();
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      var reqBody = {
        "email": emailController.text,
        "password": passwordController.text
      };
      var response = await http.post(Uri.parse(login),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(reqBody));
      var jsonResponse = jsonDecode(response.body);
      if (jsonResponse['status']) {
        var token = jsonResponse['token'];
        prefs.setString('token', token);
        var email = jsonResponse['email'];
        prefs.setString('email', email);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => HomePage(token: token)));
      } else {
        _isNotValidate = true;
        print('Something went wrong');
      }
    }
  }

  final formKey = GlobalKey<FormState>();
  // ignore: body_might_complete_normally_nullable
  String? validate(value) {
    if (value!.isEmpty) return '  * required';
  }

  void _handleTap() {
    if (_inscription) {
      registerUser();

      print('register');
    } else {
      loginUser();
      // Perform login action
      print('Login action');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 130,
                    width: 130,
                    child: Image(
                      image: AssetImage("assets/images/carlogo.png"),
                      width: 250,
                      height: 250,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Text(
                    "Welcome to Ezee Park ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Visibility(
                    visible: _inscription,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: customDecoration(),
                      child: TextFormField(
                        controller: nameController,
                        validator: (value) => validate(value),
                        decoration: InputDecoration(
                            hintText: "Name",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixIcon: Icon(
                              Icons.person_outline,
                              color: Constants.greenParkz,
                            )),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _inscription,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: customDecoration(),
                      child: TextFormField(
                        controller: phoneController,
                        validator: (value) => validate(value),
                        decoration: InputDecoration(
                            hintText: "Phone Number",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixIcon: Icon(
                              Icons.smartphone,
                              color: Constants.greenParkz,
                            )),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: customDecoration(),
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) => validate(value),
                      decoration: InputDecoration(
                        hintText: "Email",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        errorText:
                            _isNotValidate ? "  Invalid Credentials" : null,
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          color: Constants.greenParkz,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: customDecoration(),
                    child: TextFormField(
                      controller: passwordController,
                      validator: (value) => validate(value),
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey),
                          errorText:
                              _isNotValidate ? "  Invalid Credentials" : null,
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Constants.greenParkz,
                          )),
                    ),
                  ),
                  Visibility(
                    visible: !_inscription,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forgot password ?",
                            style: TextStyle(
                                color: Constants.greenParkz, fontSize: 12),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: _inscription ? 30 : 0,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      setState(() {
                        if (formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database

                          _handleTap();
                        }
                      });
                    },
                    splashColor: Colors.white,
                    hoverColor: Constants.greenParkz,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Constants.greenParkz,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 2),
                            color: Colors.grey,
                            blurRadius: 5,
                          )
                        ],
                      ),
                      child: Center(
                          child: Text(
                        !_inscription ? "Continue" : "Register",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _inscription = !_inscription;
                      });
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: InkWell(
                          child: RichText(
                            text: TextSpan(
                                text: _inscription
                                    ? "Do you have an account ? "
                                    : "New User ?",
                                style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                                children: [
                                  TextSpan(
                                    text: _inscription
                                        ? "Sign in"
                                        : " Create an account",
                                    style: TextStyle(
                                        color: Constants.greenParkz,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  )
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Or continue with ",
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContinueWith("assets/images/social_media/google.png"),
                      ContinueWith("assets/images/social_media/phone.png"),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container ContinueWith(String image) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 50,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(offset: Offset(0, 3), color: Colors.grey, blurRadius: 5)
          ]),
      child: Image.asset(
        image,
      ),
    );
  }
}
