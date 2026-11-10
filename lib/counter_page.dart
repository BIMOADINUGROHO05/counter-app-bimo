import 'package:flutter/material.dart';

import 'counter_buttons.dart';
import 'counter_display.dart';

/// Halaman counter (StatefulWidget) yang menyimpan state dan
/// mengirimkannya ke CounterDisplay serta CounterButtons.
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    debugPrint('Counter dimulai');
  }

  @override
  void dispose() {
    debugPrint('Counter ditutup');
    super.dispose();
  }

  void _tambah() {
    setState(() {
      _counter++;
    });
  }

  void _kurang() {
    // Angka tidak boleh minus: kalau sudah 0, tidak melakukan apa-apa.
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aplikasi Counter - Bimo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterDisplay(counter: _counter),
            const SizedBox(height: 32),
            CounterButtons(
              onAdd: _tambah,
              onSubtract: _kurang,
              onReset: _reset,
            ),
          ],
        ),
      ),
    );
  }
}