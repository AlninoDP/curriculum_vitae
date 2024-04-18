import 'package:curriculum_vitae/widgets/personal_experience.dart';
import 'package:curriculum_vitae/widgets/social_info.dart';
import 'package:curriculum_vitae/widgets/show_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CurriculumVitae extends StatelessWidget {
  const CurriculumVitae({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/bg.jpg'),
                    ),
                  ),
                  child: profileTopPart()),
              const Divider(
                thickness: 2,
              ),
              //* body
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/bg_body2.png'),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Ringkasan',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                      const ShowText(text: textIntroduction),
                      const SizedBox(height: 5),
                      const Text('Pengalaman Kerja',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                      PersonalExperience(
                          jobText:
                              'PT Denso Manufacturing Indonesia | Operator Produksi | 17/05/2019 - 15/05/2020',
                          btnText: 'Lihat'),
                      PersonalExperience(
                          jobText:
                              'PT Denso Indonesia | Operator Produksi | 17/03/2017 - 16/03/2019',
                          btnText: 'Lihat')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding profileTopPart() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundImage: const AssetImage('assets/images/foto_profile.png'),
            backgroundColor: Colors.blueGrey.shade100,
            radius: 60,
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 15, 8, 8),
              child: Column(
                children: [
                  Text(
                    'Alnino Dio Putera | Mobile Developer',
                  ),
                  SocialInfo(
                    icon: Icons.email,
                    iconColor: Colors.black54,
                    text: 'alninodp@gmail.com',
                  ),
                  SizedBox(height: 2),
                  SocialInfo(
                      icon: FontAwesomeIcons.linkedin,
                      iconColor: Colors.blue,
                      text: 'Alnino Dio Putera'),
                  SizedBox(height: 2),
                  SocialInfo(
                    icon: FontAwesomeIcons.whatsapp,
                    iconColor: Colors.green,
                    text: '081388041189',
                  ),
                  SizedBox(height: 2),
                  SocialInfo(
                      icon: FontAwesomeIcons.github,
                      text: 'https://github.com/alninodp'),
                  SizedBox(height: 2),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

const textIntroduction = '''
Seorang pengembang Flutter yang bersemangat dalam menciptakan aplikasi mobile yang menarik dan inovatif. Dalam waktu luang, saya senang membuat aplikasi sederhana untuk pembelajaran maupun hiburan. 

Saya memiliki keinginan yang kuat untuk terus belajar dan memperluas keterampilan saya.

Kemampuan saya termasuk mengembangkan antarmuka pengguna yang responsif dan menarik menggunakan Flutter, serta kemampuan untuk memecahkan masalah dan bekerja baik secara tim maupun secara mandiri.

Saya juga memiliki pengalaman dalam mengintegrasikan liblary pihak ketiga dan mengelola state menggunakan GetX, Provider, dan BLoC/Cubit."
''';
