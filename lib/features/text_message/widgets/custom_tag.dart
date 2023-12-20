import 'package:flutter/material.dart';

class CustomTag extends StatelessWidget {
  const CustomTag({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final ctxTheme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(right: 5.0, bottom: 5.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: ctxTheme.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Text(label,
          style: ctxTheme.textTheme.bodySmall?.copyWith(
            color: ctxTheme.colorScheme.onSecondaryContainer,
          )),
    );
  }
}
