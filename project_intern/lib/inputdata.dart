// ignore_for_file: camel_case_types, prefer_const_constructors, unused_import

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_intern/input_fruit_name.dart';

class inputData extends StatefulWidget {
  const inputData({super.key});

  @override
  State<inputData> createState() => _inputDataState();
}

class _inputDataState extends State<inputData> {
  var name = TextEditingController();
  var address1 = TextEditingController();
  var city = TextEditingController();
  var state = TextEditingController();
  var country = TextEditingController();

  static const platform = MethodChannel('tts');

  String allText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: name,
                    decoration: InputDecoration(
                      hintText: "Enter your name here..",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 2)),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    height: 11,
                  ),
                  TextField(
                    controller: address1,
                    decoration: InputDecoration(
                      labelText: "Address",
                      hintText: "AddressLine1",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 37, 104, 247))),
                      prefixIcon: Icon(
                        Icons.home,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    height: 11,
                  ),
                  TextField(
                    controller: city,
                    decoration: InputDecoration(
                      labelText: "City",
                      hintText: "City",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 10, 90, 238))),
                      prefixIcon: Icon(
                        Icons.location_city,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    height: 11,
                  ),
                  TextField(
                    controller: state,
                    decoration: InputDecoration(
                      labelText: "State",
                      hintText: "State",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 10, 130, 228))),
                      prefixIcon: Icon(
                        Icons.location_searching_outlined,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    height: 11,
                  ),
                  TextField(
                    controller: country,
                    decoration: InputDecoration(
                      labelText: "Country",
                      hintText: "Country",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 12, 134, 233))),
                      prefixIcon: Icon(
                        Icons.wordpress_outlined,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        allText = name.text +
                            address1.text +
                            city.text +
                            state.text +
                            country.text;

                        platform.invokeMethod('textToSpeech', allText);
                      },
                      child: Text("Convert"))
                ],
              ))),
    );
  }
}
