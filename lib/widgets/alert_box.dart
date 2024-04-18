import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  const AlertBox(
      {super.key, required this.content, this.onPressed, required this.title});
  final String title;
  final String content;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        TextButton(
          onPressed: onPressed,
          child: const Text('OK'),
        ),
      ],
    );
  }
}
