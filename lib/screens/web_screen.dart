import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vijaymakwana/global_keys.dart';
import 'package:vijaymakwana/screens/web_about.dart';
import 'package:vijaymakwana/screens/web_conatct.dart';
import 'package:vijaymakwana/screens/web_experience.dart';
import 'package:vijaymakwana/screens/web_home.dart';
import 'package:vijaymakwana/screens/web_projects.dart';
import 'package:vijaymakwana/screens/web_skills.dart';
import 'package:vijaymakwana/widgets/made_with_flutter.dart';
import 'package:vijaymakwana/widgets/web_menu_header.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        WebMenuHeader(key: GlobalKeys.KEY_WEB_HEADER),
        Expanded(
            child: SingleChildScrollView(
                child: Column(
          children: [
            WebHome(key: GlobalKeys.KEY_WEB_HOME),
            WebProjects(key: GlobalKeys.KEY_WEB_PROJECTS),
            WebExperience(key: GlobalKeys.KEY_WEB_EXPERIENCE),
            WebSkills(key: GlobalKeys.KEY_WEB_SKILLS),
            WebAbout(key: GlobalKeys.KEY_WEB_ABOUTME),
            WebContact(key: GlobalKeys.KEY_WEB_CONTACTME),
            const Gap(40),
            const MadeWithFlutterButton(),
            const Gap(30),
          ],
        ))),
      ],
    ));
  }
}
