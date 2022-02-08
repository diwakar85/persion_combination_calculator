import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:love_calculator/screens/result_screen.dart';

import '../constant.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController person1controller = TextEditingController();

  TextEditingController person2controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purple,
              Colors.teal,
              Colors.pink,
              Colors.deepPurpleAccent
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
              Center(
                child: Text(
                  "Person 1",
                  style: kPersonTextStyle,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(40.0)),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 32),
                child: TextField(
                  controller: person1controller,
                  style: kTextFieldInputStyle,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      FontAwesomeIcons.male,
                      color: kIconTextFieldColor,
                      size: 30.0,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Image(image: AssetImage("assets/images/hearttt.png"),height: 35,width:35,)
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Text(
                  "Person 2",
                  style: kPersonTextStyle,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(40.0)),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 32),
                child: TextField(
                  controller: person2controller,
                  style: kTextFieldInputStyle,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      FontAwesomeIcons.female,
                      color: kIconTextFieldColor,
                      size: 30.0,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              InkWell(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8),
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 70),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      //Colors.teal,
                      //Colors.blue,
                      Colors.pink,
                      Colors.purple,
                     /// Colors.yellow
                    ]),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Center(
                    child: Text(
                      "Calculate",
                      style: kButtonText,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ResultScreen(
                          person1Name: person1controller.text,
                          person2Name: person2controller.text)));
                },
              )
            ])),
      ),
    );
  }
}
