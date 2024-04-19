import 'package:flutter/material.dart';

class PersonalExperience extends StatelessWidget {
  const PersonalExperience({super.key, required this.jobText, this.onPressed});
  final String jobText;

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            '\u2022 $jobText',
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(),
          ),
          child: const Icon(Icons.search),
        )
      ],
    );
  }
}
