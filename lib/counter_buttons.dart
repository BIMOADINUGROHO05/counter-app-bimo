import 'package:flutter/material.dart';

/// Widget yang berisi tombol Tambah, Kurang, dan Reset.
/// Aksi tombol dikirim dari parent lewat 3 callback function.
class CounterButtons extends StatelessWidget {
  final VoidCallback onAdd;
  final VoidCallback onSubtract;
  final VoidCallback onReset;

  const CounterButtons({
    super.key,
    required this.onAdd,
    required this.onSubtract,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          onPressed: onSubtract,
          icon: const Icon(Icons.remove),
          label: const Text('Kurang'),
        ),
        const SizedBox(width: 12),
        ElevatedButton.icon(
          onPressed: onReset,
          icon: const Icon(Icons.refresh),
          label: const Text('Reset'),
        ),
        const SizedBox(width: 12),
        ElevatedButton.icon(
          onPressed: onAdd,
          icon: const Icon(Icons.add),
          label: const Text('Tambah'),
        ),
      ],
    );
  }
}