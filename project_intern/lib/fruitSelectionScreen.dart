// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_intern/selectedFruit.dart';
import 'fruit_model.dart';

class FruitSelectionScreen extends StatefulWidget {
  @override
  _FruitSelectionScreenState createState() => _FruitSelectionScreenState();
}

class _FruitSelectionScreenState extends State<FruitSelectionScreen> {
  final List<Fruit> fruits = [
    Fruit(name: 'Mango'),
    Fruit(name: 'Apple'),
    Fruit(name: 'Banana'),
    Fruit(name: 'Orange'),
    Fruit(name: 'Berry'),
    Fruit(name: 'Cherry'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Fruits'),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(fruits[index].name),
            trailing: Checkbox(
              value: fruits[index].isSelected,
              onChanged: (bool? value) {
                setState(() {
                  fruits[index].isSelected = value!;
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () {
          List<Fruit> selectedFruits =
              fruits.where((fruit) => fruit.isSelected).toList();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  SelectedFruitsScreen(selectedFruits: selectedFruits),
            ),
          );
        },
      ),
    );
  }
}
