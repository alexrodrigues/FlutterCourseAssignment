import 'package:flutter/material.dart';

class AssignmentText extends StatelessWidget {
  final String _title;
  AssignmentText(this._title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
      child: Text(
        _title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.normal,
          color: Colors.red,
        ),
      ),
    );
  }
}
