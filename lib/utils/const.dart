import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String baseUrl = 'https://api.github.com/users/JakeWharton/repos';

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

buildErrorDialog(BuildContext context, String title, String contant) {
  Widget okButton = TextButton(
    child: Text("OK",
        style: TextStyle(
            color: Colors.black,
            decorationColor: Colors.black,
            fontFamily: 'poppins')),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog

  if (Platform.isAndroid) {
    AlertDialog alert = AlertDialog(
      title: Text(title,
          style: TextStyle(
              color: Colors.black,
              decorationColor: Colors.black,
              fontFamily: 'poppins')),
      content: Text(contant,
          style: TextStyle(
              color: Colors.black,
              decorationColor: Colors.black,
              fontFamily: 'poppins')),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  if (Platform.isIOS) {
    CupertinoAlertDialog cupertinoAlertDialog = CupertinoAlertDialog(
      title: Text(title,
          style: TextStyle(
              color: Colors.black,
              decorationColor: Colors.black,
              fontFamily: 'poppins')),
      content: Text(contant,
          style: TextStyle(
              color: Colors.black,
              decorationColor: Colors.black,
              fontFamily: 'poppins')),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return cupertinoAlertDialog;
      },
    );
  }
  // show the dialog
}
