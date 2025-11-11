import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vijaymakwana/image_paths.dart';
import 'package:vijaymakwana/models/web_actions.dart';
import 'package:vijaymakwana/widgets/circular_dashed_border.dart';
import 'package:vijaymakwana/widgets/profile_info.dart';

class WebHome extends StatelessWidget {
  const WebHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.30,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(120),
                ProfileInfo(
                  name: "Vijay",
                  position: "Senior Android Engineer",
                  basedIn: "India",
                  about:
                      "Having over 8+ years of experience crafting high-quality mobile applications. Skilled in Kotlin, Jetpack Compose, Clean Architecture, and Flutter — passionate about building seamless, scalable, and modern app experiences. Let’s connect to explore collaboration opportunities!",
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
              ],
            )),
        SizedBox(width: MediaQuery.of(context).size.width * 0.05),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Gap(120),
              CircularDashedBorder(
                imagePath: ImagesPath.profileAvatar,
                dashColor: Theme.of(context).buttonTheme.colorScheme!.primary,
                imageSize: MediaQuery.of(context).size.width * 0.22,
                imagePadding: MediaQuery.of(context).size.width * 0.02,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
