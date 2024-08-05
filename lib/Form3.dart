//  ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Form3 extends StatelessWidget {
  const Form3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("FORM TEST"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(hintText: "First Name"),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(hintText: "Second Name"),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      )),
    );
  }
}
