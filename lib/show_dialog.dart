library dialog;

import 'package:flutter/material.dart';
import 'dart:async';

void showaboutDialog(BuildContext context, String title, String content) {
  // flutter defined function
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: new Text(
          title,
          textAlign: TextAlign.center,
        ),
        content: new Text(content),
        actions: <Widget>[
          // usually buttons at the bottom of the dialog
          new FlatButton(
            child: new Text("Close"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

void loadingDialog(BuildContext context, int seconds) {
  // flutter defined function
  var ms = Duration(seconds:seconds);
  Timer(ms, () => Navigator.of(context).pop());

  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: new Text(
          "Loading",
          textAlign: TextAlign.center,
        ),
        content: CircularProgressIndicator(),
      );
    },
  );
}
