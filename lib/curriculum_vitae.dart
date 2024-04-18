import 'package:curriculum_vitae/widgets/alert_box.dart';
import 'package:curriculum_vitae/widgets/personal_experience.dart';
import 'package:curriculum_vitae/widgets/skill_information.dart';
import 'package:curriculum_vitae/widgets/social_info.dart';
import 'package:curriculum_vitae/widgets/show_text.dart';
import 'package:curriculum_vitae/widgets/title_text.dart';
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
                  child: _profileTopPart()),
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
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //* Summary
                      TitleText(titleText: 'Summary'),
                      ShowText(text: textIntroduction),
                      SizedBox(height: 5),

                      //* Work Experience
                      TitleText(titleText: 'Pengalaman Kerja'),
                      PersonalExperience(
                          jobText:
                              'PT Denso Manufacturing Indonesia | Operator Produksi | 17/05/2019 - 15/05/2020',
                          btnText: 'Lihat'),
                      PersonalExperience(
                          jobText:
                              'PT Denso Indonesia | Operator Produksi | 17/03/2017 - 16/03/2019',
                          btnText: 'Lihat'),
                      SizedBox(height: 5),

                      //* Project Experience
                      TitleText(titleText: 'Pengalaman Project'),
                      PersonalExperience(
                        jobText: 'E-Lement | College Project | Flutter Project',
                        btnText: 'Lihat',
                      ),
                      PersonalExperience(
                        jobText: 'AdviceApp | Course Project | Flutter Project',
                        btnText: 'Lihat',
                      ),
                      PersonalExperience(
                          jobText:
                              'QuestionTask | Capstone Project | Flutter Project',
                          btnText: 'Lihat',
                          onPressed: () => _showAlertBox(context)),
                      SizedBox(height: 5),

                      //* Skills
                      TitleText(titleText: 'Kemampuan'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SkillInformation(
                            imgSrc: 'assets/icons/dart_icon.png',
                            text: 'Dart',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SkillInformation(
                            imgSrc: 'assets/icons/flutter_icon.png',
                            text: 'Flutter',
                          ),
                          SkillInformation(
                            imgSrc: 'assets/icons/git_icon.png',
                            text: 'Git',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SkillInformation(
                            imgSrc: 'assets/icons/vscode_icon.png',
                            text: 'Vs Code',
                          ),
                          SkillInformation(
                            imgSrc: 'assets/icons/figma_icon.png',
                            text: 'Figma',
                          ),
                        ],
                      ),

                      //* Education
                      TitleText(titleText: 'Pendidikan'),
                      Text(
                        '\u2022 Universitas Esa Unggul | 2022 - Sekarang',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '\u2022 SMKN 1 Kota Bekasi | 2013 - 2016',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
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

  Padding _profileTopPart() {
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

  void _showAlertBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertBox(
          title: "Alert",
          content: "Ini adalah pesan peringatan.",
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
        );
      },
    );
  }
}

const textIntroduction = '''
Halo saya Alnino, Saya memiliki keinginan yang kuat untuk terus belajar dan memperluas keterampilan saya. Kemampuan saya termasuk mengembangkan antarmuka pengguna yang responsif dan menarik menggunakan Flutter, serta kemampuan untuk memecahkan masalah dan bekerja baik secara tim maupun secara mandiri.

Saya juga memiliki pengalaman dalam mengintegrasikan liblary pihak ketiga dan mengelola state menggunakan GetX, Provider, dan BLoC/Cubit."
''';
