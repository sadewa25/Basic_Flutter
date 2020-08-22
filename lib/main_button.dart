import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_app_helloworld/assignment/main.dart';

class MainButton extends StatelessWidget {

  final String title;
  final StatefulWidget sampels;

  MainButton(this.title, this.sampels);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(16),
        child: RaisedButton(
          child: Text(title),
          onPressed: () =>
          {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => sampels))
          },
        ));
  }
}
