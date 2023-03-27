import 'package:flutter/material.dart';
import 'package:flutter_ai/core/presentation/components/text_widget.dart';

void showSnackBar({required String label, required BuildContext context}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: const TextWidget(
        label: 'Please enter a parameter',
      ),
      backgroundColor: Theme.of(context).colorScheme.error,
    ),
  );
}
