import 'package:flutter/material.dart';

class ShowText extends StatefulWidget {
  const ShowText({
    Key? key,
    required this.text,
    this.maxLines = 3,
  }) : super(key: key);

  final String text;
  final int maxLines;

  @override
  State<ShowText> createState() => _ShowTextState();
}

class _ShowTextState extends State<ShowText> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          maxLines: _isExpanded ? null : widget.maxLines,
          textAlign: TextAlign.justify,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Text(
            _isExpanded ? 'Show Less' : 'Show More',
            style: const TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
