import 'package:basicbmicalculatorflutter/card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

enum Gender { male, female }

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  Gender gender;
  int height = 170;
  int weight = 60;
  int age = 25;

  _gendersection() {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  gender = Gender.male;
                });
              },
              child: ReusableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.mars,
                      size: 80.0,
                      color:
                          gender == Gender.male ? Colors.white : Colors.white70,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'MALE',
                      style: kbdytext.copyWith(
                        color: gender == Gender.male
                            ? Colors.white
                            : Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  gender = Gender.female;
                });
              },
              child: ReusableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.venus,
                      size: 80.0,
                      color: gender == Gender.female
                          ? Colors.white
                          : Colors.white70,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'FEMALE',
                      style: kbdytext.copyWith(
                        color: gender == Gender.female
                            ? Colors.white
                            : Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _heightsection() {
    return Expanded(
      child: ReusableCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HEIGHT',
              style: kbdytext,
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '$height',
                  style: klargetxtstyle,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  'CM',
                  style: kbdytext,
                ),
              ],
            ),
            Slider(
              value: height.toDouble(),
              onChanged: (value) {
                setState(() {
                  height = value.toInt();
                });
              },
              min: 120.0,
              max: 220,
              activeColor: Colors.red,
              inactiveColor: Colors.pink,
            )
          ],
        ),
      ),
    );
  }

  _weightagesection() {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'WEIGHT',
                    style: kbdytext,
                  ),
                  Text(
                    '$weight',
                    style: klargetxtstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            weight--;
                          });
                        },
                        child: Icon(Icons.remove),
                        shape: CircleBorder(),
                        color: Color(0xFF1C2033),
                        padding: EdgeInsets.all(15.0),
                        elevation: 0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            weight++;
                          });
                        },
                        child: Icon(Icons.add),
                        shape: CircleBorder(),
                        color: Color(0xFF1C2033),
                        padding: EdgeInsets.all(15.0),
                        elevation: 0,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'AGE',
                    style: kbdytext,
                  ),
                  Text(
                    '$age',
                    style: klargetxtstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            age--;
                          });
                        },
                        child: Icon(Icons.remove),
                        shape: CircleBorder(),
                        color: Color(0xFF1C2033),
                        padding: EdgeInsets.all(15.0),
                        elevation: 0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            age++;
                          });
                        },
                        child: Icon(Icons.add),
                        shape: CircleBorder(),
                        color: Color(0xFF1C2033),
                        padding: EdgeInsets.all(15.0),
                        elevation: 0,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _bottombutton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(35.0),
        ),
        alignment: Alignment.center,
        height: 60.0,
        width: double.infinity,
        child: Text(
          'CALCULATE YOUR BMI',
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _gendersection(),
            _heightsection(),
            _weightagesection(),
            _bottombutton(),
            SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }
}
