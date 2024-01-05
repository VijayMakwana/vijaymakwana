import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vijaymakwana/image_paths.dart';
import 'package:vijaymakwana/models/web_actions.dart';
import 'package:vijaymakwana/widgets/circular_dashed_border.dart';
import 'package:vijaymakwana/widgets/profile_info.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const ProfileInfo(
              name: "Vijay",
              position: "Android Developer",
              basedIn: "Ahmedabad, India",
              about:
                  "Having more then 6 years of experience creating high-performance mobile apps. Expertise in Android, Kotlin, Jetpack Compose, Clean Architecture, Flutter and more. Let's connect to explore collaboration opportunities!",
              webActions: [
                WebAction(
                  webUrl: "https://www.linkedin.com/in/vijay-makwana1511",
                  assetImage: AssetImage(ImagesPath.iconLinkedin),
                ),
                WebAction(
                  webUrl: "https://github.com/vijaymakwana",
                  assetImage: AssetImage(ImagesPath.iconGithub),
                ),
                WebAction(
                  webUrl:
                      "https://stackoverflow.com/users/5746245/vijay-makwana",
                  assetImage: AssetImage(ImagesPath.iconStackOverflow),
                ),
              ],
            ),
            const Gap(20),
            CircularDashedBorder(
              imagePath: ImagesPath.profileAvatar,
              dashColor: Theme.of(context).buttonTheme.colorScheme!.primary,
              imageSize: 220,
              imagePadding: 30,
            ),
          ],
        ),
      ),
    );
  }
}
