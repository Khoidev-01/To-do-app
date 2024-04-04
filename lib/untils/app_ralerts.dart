import 'package:flutter/material.dart';
import 'package:todoapp/untils/untils.dart';

class RAppAlerts {
  RAppAlerts._();

  static displaySnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: context.textTheme.bodyLarge?.copyWith(
            color: context.colorScheme.surface,
          ),
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
