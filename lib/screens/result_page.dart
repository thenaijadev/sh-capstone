// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, this.subject, this.calcGrade}) : super(key: key);

  final String? subject;
  final String? calcGrade;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 143, 135, 255),
      ),
      backgroundColor: const Color.fromARGB(255, 143, 135, 255),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  "Your grade  for $subject is $calcGrade",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 45.0),
                ),
              ),
            )
          ]),
    );
  }
}
