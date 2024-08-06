//  ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Form3 extends StatefulWidget {
  Form3({super.key});

  @override
  State<Form3> createState() => _Form3State();
}

class _Form3State extends State<Form3> {
  final Form3 form3data = Get.put(Form3());

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

  String? _selectedCity;
  List<String> City = ['Lahore', 'Faisalabad', 'Gojra'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 30,
              ),
              Flexible(
                child: Obx(
                  () => TextField(
                    controller: form3data.fName.value,
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
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: Obx(
                  () => TextField(
                    controller: _lName.value,
                    decoration: InputDecoration(
                        label: Text('Second Name'),
                        labelStyle: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
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
                child: Obx(
                  () => TextField(
                    controller: _PH.value,
                    decoration: InputDecoration(
                        label: Text('Phone No'),
                        hintText: "0000000000",
                        labelStyle: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
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
              Flexible(
                child: Obx(
                  () => TextField(
                    controller: _Email.value,
                    decoration: InputDecoration(
                        label: Text('Email'),
                        labelStyle: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
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
              Flexible(
                child: Obx(
                  () => TextField(
                    controller: _Address.value,
                    decoration: InputDecoration(
                        label: Text('Address'),
                        labelStyle: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
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
              Flexible(
                child: Obx(
                  () => TextField(
                    controller: _CNIC.value,
                    decoration: InputDecoration(
                        label: Text('CNIC'),
                        hintText: "00000 0000000 0",
                        labelStyle: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.circular(12)),
                child: DropdownButton<String>(
                  borderRadius: BorderRadius.circular(12),
                  value: _selectedCity,
                  hint: Text('City'),
                  items: City.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _selectedCity = newValue;
                    });
                  },
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
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            height: 300,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('NAME: ' +
                                      _fName.value.text +
                                      " " +
                                      _lName.value.text),
                                  Text('PHONE NO: $selectedValue ' +
                                      _PH.value.text),
                                  Text("EMAIL: " + _Email.value.text),
                                  Text('ADDRESS: ' + _Address.value.text),
                                  Text('CNIC: ' + _CNIC.value.text),
                                  Text('CITY: $_selectedCity'),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 12),
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red.shade300,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 12),
                    child: Text(
                      "CANCEL",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
