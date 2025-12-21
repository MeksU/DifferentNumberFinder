import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/different_number_provider.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final result = context.watch<DifferentNumberProvider>().result;

    return Scaffold(
      appBar: AppBar(title: Text("Result")),
      body: Center(
        child: Text(
          result.toString(),
          style: const TextStyle(
            fontSize: 64, 
            fontWeight: FontWeight.bold
            ),
        ),
      ),
    );
  }
}
