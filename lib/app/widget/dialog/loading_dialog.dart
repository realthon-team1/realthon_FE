import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return ShadDialog(
      title: Text(message),
      closeIcon: Container(),
      description: const Padding(
        padding: EdgeInsets.only(
          bottom: 8,
          top: 24,
        ),
        child: Center(
          child: SizedBox(
            child: CircularProgressIndicator(
              strokeWidth: 3,
            ),
          ),
        ),
      ),
    );
  }
}
