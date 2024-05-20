// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'fruit_model.dart';

class SelectedFruitsScreen extends StatelessWidget {
  final List<Fruit> selectedFruits;

  // Mapping of fruit names to image paths
  final Map<String, String> fruitImagePaths = {
    'Mango': 'lib/assets/mango.png',
    'Apple': 'lib/assets/apple.png',
    'Banana': 'lib/assets/banana.jpg',
    'Orange': 'lib/assets/orange.jpg',
    'Berry': 'lib/assets/berry.png',
    'Cherry': 'lib/assets/cherry.png',
  };

  SelectedFruitsScreen({required this.selectedFruits});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Fruits'),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: selectedFruits.length,
        itemBuilder: (context, index) {
          String imagePath = fruitImagePaths[selectedFruits[index].name] ?? '';
          return Card(
            child: Column(
              children: [
                // Use Image.asset with the dynamically assigned image path
                Image.asset(
                  imagePath,
                  width: 100,
                  height: 100,
                  // Provide a placeholder image if the image path is not found
                  // You can replace 'assets/placeholder.png' with your own placeholder image
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset(
                      'assets/placeholder.png',
                      width: 100,
                      height: 100,
                    );
                  },
                ),
                //Image.asset(selectedFruits[index].imagePath,
                //    width: 100, height: 100),
                Text(selectedFruits[index].name),
              ],
            ),
          );
        },
      ),
    );
  }
}
