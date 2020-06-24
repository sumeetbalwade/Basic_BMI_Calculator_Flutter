import 'package:basicbmicalculatorflutter/calculation.dart';
import 'package:basicbmicalculatorflutter/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class Result extends StatelessWidget {
  final BMICal cal;

  Result({this.cal});

  _resultsection() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ReusableCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                cal.getResult(),
                style: kbdytext.copyWith(
                    color: Colors.lightGreen, fontWeight: FontWeight.bold),
              ),
              Text(
                cal.calculateBMI(),
                style: klargetxtstyle,
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                'NORMAL BMI RANGE : ',
                style: kbdytext.copyWith(color: Colors.grey),
              ),
              Text(
                '18.5',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                cal.getInterpretation(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _topsection() {
    return Row(
      children: [
        SizedBox(
          width: 25.0,
        ),
        Text(
          'Your Result',
          style: klargetxtstyle.copyWith(fontSize: 50.0),
        ),
      ],
    );
  }

  _bottombutton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        margin:
            EdgeInsets.only(top: 20.0, bottom: 10.0, right: 10.0, left: 10.0),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(35.0),
        ),
        alignment: Alignment.center,
        height: 60.0,
        width: double.infinity,
        child: Text(
          'RE-CALCULATE YOUR BMI',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 3,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.0,
            ),
            _topsection(),
            _resultsection(),
            _bottombutton(context)
          ],
        ),
      ),
    );
  }
}
