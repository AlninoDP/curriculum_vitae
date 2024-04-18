import 'package:flutter/material.dart';

class PersonalExperience extends StatelessWidget {
  const PersonalExperience(
      {super.key, required this.jobText, required this.btnText});
  final String jobText;
  final String btnText;

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
        ElevatedButton(onPressed: () {}, child: Text(btnText))
      ],
    );
  }
}
