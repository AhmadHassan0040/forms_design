//  ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Form3 extends StatefulWidget {
  Form3({super.key});

  @override
  State<Form3> createState() => _Form3State();
}

class _Form3State extends State<Form3> {
  String? selectedValue;

  List<String> options = [
    '+90',
    '+91',
    '+92',
    '+93',
    '+94',
    '+95',
    '+96',
    '+97',
    '+98',
    '+99'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "FORM TEST",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 30,
              ),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('First Name'),
                    labelStyle:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    contentPadding: EdgeInsets.symmetric(horizontal: 5),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                      label: Text('Second Name'),
                      labelStyle:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 5),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.circular(12)),
                child: DropdownButton<String>(
                  borderRadius: BorderRadius.circular(12),
                  value: selectedValue,
                  hint: Text('+9..'),
                  items: options.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedValue = newValue;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                      label: Text('Phone No'),
                      hintText: "0000000000",
                      labelStyle:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 5),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
              SizedBox(
                width: 30,
              ),
            ],
          )
        ],
      )),
    );
  }
}
