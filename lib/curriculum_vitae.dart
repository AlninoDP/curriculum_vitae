import 'package:flutter/material.dart';

class CurriculumVitae extends StatelessWidget {
  const CurriculumVitae({super.key});

  @override
  Widget build(BuildContext context) {
    final String introduction = '''
Alnino, seorang pengembang Flutter yang bersemangat dalam menciptakan aplikasi mobile yang menarik dan inovatif.
''';
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/foto_profile.png'),
                  backgroundColor: Colors.blueGrey.shade100,
                  radius: 60,
                ),
                const Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 15, 8, 8),
                    child: Column(
                      children: [
                        Text(
                          'Alnino Dio Putera | Mobile Developer',
                          textAlign: TextAlign.justify,
                        ),
                        Row()
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      )),
    );
  }
}
