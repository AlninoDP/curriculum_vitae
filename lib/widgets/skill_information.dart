import 'package:flutter/material.dart';

class SkillInformation extends StatelessWidget {
  const SkillInformation({super.key, required this.imgSrc, required this.text});
  final String imgSrc;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imgSrc),
          backgroundColor: Colors.transparent,
          radius: 16,
        ),
        const SizedBox(width: 6),
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
