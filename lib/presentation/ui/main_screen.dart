import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../l10n/app_localizations.dart';
import '../providers/different_number_provider.dart';
import '../util/exception_l10n.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController _controller = TextEditingController();

  void _search(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final provider = context.read<DifferentNumberProvider>();

    provider.search(_controller.text);

    if (provider.error != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(provider.error!.exceptionMessage(l10n))),
      );
      return;
    }

    context.push('/result');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appBarTitle),
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
                    decoration: InputDecoration(
                      labelText: l10n.inputLabel,
                      hintText: l10n.inputHint,
                      border: OutlineInputBorder()
                    ),
                    onSubmitted: (_) => _search(context)
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => _search(context),
                    child: Text(l10n.search),
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