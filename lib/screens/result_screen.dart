import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:love_calculator/common/brain.dart';
import '../constant.dart';
class ResultScreen extends StatefulWidget {
  final String person1Name;
  final String person2Name;

    ResultScreen({ required this.person1Name, required this.person2Name});

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  int lovePercentage = Random().nextInt(101);
  Brain brain = Brain();
  late String loveMessage;

  void updateUI(int lovePercent) {
    setState(() {
      loveMessage = brain.getMessage(lovePercent);
    });
  }

  @override
  void initState() {
    updateUI(lovePercentage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.purple,
              Colors.teal,
              Colors.pink,
              Colors.deepPurpleAccent
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  widget.person1Name,
                  style: kPersonTextStyle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Icon(
                FontAwesomeIcons.heart,
                size: 25.0,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  widget.person2Name,
                  style: kPersonTextStyle,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Center(
                child: Text(
                  lovePercentage.toString() + "%",
                  style: kLovePercent,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Text(
                  loveMessage,
                  style: kLoveMessage,
                ),
              ),
              SizedBox(
                height: 80,
              ),

              InkWell(
                child: Container(
                  padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8),
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 70),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.teal,
                      Colors.blue,
                      Colors.pink,
                      Colors.purple,
                      Colors.yellow
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
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
