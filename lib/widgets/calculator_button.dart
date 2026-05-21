import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onTap;

  const CalculatorButton({
    super.key,
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 56,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppTheme.black, width: 2.5),
            boxShadow: [AppTheme.brutalShadow(x: 4, y: 4)],
          ),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: AppTheme.black,
            ),
          ),
        ),
      ),
    );
  }
}