// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sidehustle_capstone_project/screens/result_page.dart';
import 'package:sidehustle_capstone_project/utilities/grade_calculator.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? subject;
  int? score;
  bool? scoreIsValid = true;
  final fieldText = TextEditingController();

  void clearText() {
    fieldText.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 143, 135, 255),
        body: ListView(
          children: [
            SizedBox(
              height: 230.0,
            ),
            Center(
              child: Text(
                "Peter please input the subject and your score.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 30.0),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextField(
              onChanged: (value) {
                subject = value;
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: "Input a subject:",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextField(
              onChanged: (value) {
                score = int.parse(value);
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: "Input the score:",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            FlatButton(
              onPressed: () {
                String calcGrade = Calculate().calculateGrade(score!);
                clearText();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      subject: subject,
                      calcGrade: calcGrade,
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: 300.0,
                height: 60.0,
                child: Center(
                  child: Text(
                    "Calculate Grade",
                    style: (TextStyle(color: Colors.white, fontSize: 30.0)),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
