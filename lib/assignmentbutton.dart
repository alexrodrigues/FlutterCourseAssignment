import 'package:flutter/material.dart';

class AssignmentButton extends StatelessWidget {
  final String _buttonTitle;
  final Function _callback;
  AssignmentButton(this._buttonTitle, this._callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: RaisedButton(
        color: Colors.red,
        textColor: Colors.white,
        child: Text(_buttonTitle),
        onPressed: _callback,
      ),
    );
  }
}
