// lib/screens/generator/password_generator_screen.dart

import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';
import '../../features/password_generator/password_strength_meter.dart';
import '../../services/password_generator_service.dart';

class PasswordGeneratorScreen
    extends StatefulWidget {
  const PasswordGeneratorScreen({
    super.key,
  });

  @override
  State<PasswordGeneratorScreen> createState() =>
      _PasswordGeneratorScreenState();
}

class _PasswordGeneratorScreenState
    extends State<PasswordGeneratorScreen> {
  final PasswordGeneratorService _service =
      PasswordGeneratorService();

  String _password = '';

  int _length =
      AppConstants.defaultPasswordLength;

  bool _uppercase = true;
  bool _lowercase = true;
  bool _numbers = true;
  bool _symbols = true;

  void _generate() {
    setState(() {
      _password = _service.generate(
        length: _length,
        uppercase: _uppercase,
        lowercase: _lowercase,
        numbers: _numbers,
        symbols: _symbols,
      );
    });
  }

  @override
  void initState() {
    super.initState();

    _generate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Password Generator',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            SelectableText(
              _password,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall,
            ),

            const SizedBox(
              height: 20,
            ),

            PasswordStrengthMeter(
              password: _password,
            ),

            Slider(
              min: 8,
              max: 64,
              divisions: 56,
              value: _length.toDouble(),
              label: _length.toString(),
              onChanged: (value) {
                setState(() {
                  _length =
                      value.round();
                });
              },
            ),

            SwitchListTile(
              title:
                  const Text('Uppercase'),
              value: _uppercase,
              onChanged: (value) {
                setState(() {
                  _uppercase = value;
                });
              },
            ),

            SwitchListTile(
              title:
                  const Text('Lowercase'),
              value: _lowercase,
              onChanged: (value) {
                setState(() {
                  _lowercase = value;
                });
              },
            ),

            SwitchListTile(
              title:
                  const Text('Numbers'),
              value: _numbers,
              onChanged: (value) {
                setState(() {
                  _numbers = value;
                });
              },
            ),

            SwitchListTile(
              title:
                  const Text('Symbols'),
              value: _symbols,
              onChanged: (value) {
                setState(() {
                  _symbols = value;
                });
              },
            ),

            FilledButton(
              onPressed: _generate,
              child: const Text(
                'Generate',
              ),
            ),
          ],
        ),
      ),
    );
  }
}