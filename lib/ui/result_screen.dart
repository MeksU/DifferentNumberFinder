import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int result;

  const ResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Odstająca wartość')),
      body: Center(
        child: Text(
          result.toString(),
          style: const TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}