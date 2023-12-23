import 'package:flutter/material.dart';

class CustomSelectableTag extends StatelessWidget {
  const CustomSelectableTag({
    super.key,
    required this.label,
    required this.active,
    required this.onTap,
  });

  final String label;
  final bool active;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final ctxTheme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        margin: const EdgeInsets.only(right: 5.0, bottom: 5.0),
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
            color: active ? ctxTheme.colorScheme.primary : Colors.transparent,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: ctxTheme.colorScheme.primary, width: 1)),
        child: Text(label,
            style: ctxTheme.textTheme.bodySmall?.copyWith(
              color: active
                  ? ctxTheme.colorScheme.onPrimary
                  : ctxTheme.textTheme.bodySmall?.color,
            )),
      ),
    );
  }
}
