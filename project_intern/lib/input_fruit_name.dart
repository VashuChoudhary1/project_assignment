// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:project_intern/fruitSelectionScreen.dart';
import 'package:project_intern/fruit_model.dart';

class FruitName extends StatelessWidget {
  const FruitName({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FruitSelectionScreen(),
    );
  }
}
