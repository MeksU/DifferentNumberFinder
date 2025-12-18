import 'package:flutter/material.dart';
import 'package:flutter_app/logic/exception_handler.dart';
import 'result_screen.dart';
import '../logic/different_finder.dart';
import '../logic/input_parser.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController _controller = TextEditingController();

  void _search() {
    try {
      final parsedNumbers = InputParser.parse(_controller.text);
      final result = DifferentFinder.find(parsedNumbers);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ResultScreen(result: result),
        ),
      );
    } on ExceptionHandler catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message)),
      );
    } catch (_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Nieznany błąd aplikacji')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wykrywacz wartości odstającej"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 480
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      labelText: 'Wpisz liczby całkowite po przecinkach',
                      hintText: '10, 20, 10, 30, 20, 5, 4, 100 ...',
                      border: OutlineInputBorder()
                    ),
                    onSubmitted: (_) => _search()
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _search,
                    child: const Text('Wyszukaj'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}