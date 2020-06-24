import 'package:basicbmicalculatorflutter/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget child;

  ReusableCard({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: cardcolor,
      ),
      child: Center(child: child),
    );
  }
}
