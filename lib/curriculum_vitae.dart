import 'package:curriculum_vitae/const/constant.dart';
import 'package:curriculum_vitae/widgets/alert_box.dart';
import 'package:curriculum_vitae/widgets/custom_background.dart';
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
              CustomBackground(
                imgSrc: 'assets/images/bg.jpg',
                child: _profileTopPart(),
              ),

              //* body
              CustomBackground(
                imgSrc: 'assets/images/bg_body.png',
                opacity: 0.4,
                child: _profileBodyPart(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _profileBodyPart(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //* Summary
          const TitleText(titleText: 'Summary'),
          const ShowText(text: textIntroduction),
          const SizedBox(height: 5),

          //* Work Experience
          const TitleText(titleText: 'Pengalaman Kerja'),
          PersonalExperience(
            jobText:
                'PT Denso Manufacturing Indonesia | Operator Produksi | 17/05/2019 - 15/05/2020',
            onPressed: () => _showJobResponsibility(
              context: context,
              content: workExperienceText[0],
            ),
          ),
          PersonalExperience(
            jobText:
                'PT Denso Indonesia | Operator Produksi | 17/03/2017 - 16/03/2019',
            onPressed: () => _showJobResponsibility(
              context: context,
              content: workExperienceText[1],
            ),
          ),
          const SizedBox(height: 5),

          //* Project Experience
          const TitleText(titleText: 'Pengalaman Project'),
          PersonalExperience(
            jobText: 'E-Lement | College Project | Flutter Project',
            onPressed: () => _showJobResponsibility(
              context: context,
              content: projectExperienceText[0],
            ),
          ),
          PersonalExperience(
            jobText: 'AdviceApp | Course Project | Flutter Project',
            onPressed: () => _showJobResponsibility(
              context: context,
              content: projectExperienceText[1],
            ),
          ),
          PersonalExperience(
              jobText: 'QuestionTask | Capstone Project | Flutter Project',
              onPressed: () => _showJobResponsibility(
                    context: context,
                    content: projectExperienceText[2],
                  )),
          const SizedBox(height: 5),

          //* Skills
          const TitleText(titleText: 'Kemampuan'),
          const Row(
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
          const Row(
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
          const TitleText(titleText: 'Pendidikan'),
          const Text(
            '\u2022 Universitas Esa Unggul | 2022 - Sekarang',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const Text(
            '\u2022 SMKN 1 Kota Bekasi | 2013 - 2016',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
            ),
          )
        ],
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

  void _showJobResponsibility({
    required BuildContext context,
    required String content,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertBox(
          title: 'Responsibility',
          content: content,
          onPressed: () {
            Navigator.of(context).pop();
          },
        );
      },
    );
  }
}
