import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vijaymakwana/image_paths.dart';
import 'package:vijaymakwana/models/web_actions.dart';
import 'package:vijaymakwana/utils/helper_functions.dart';

class ProfileInfo extends StatelessWidget {
  final String name;
  final String position;
  final String basedIn;
  final String about;
  final List<WebAction>? webActions;

  const ProfileInfo(
      {super.key,
      required this.name,
      required this.position,
      required this.basedIn,
      required this.about,
      this.webActions});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text(
                "Hey, I'm $name",
                style: const TextStyle(fontSize: 22, letterSpacing: -1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: Image.asset(
                ImagesPath.wavingHand,
                width: 36,
                height: 36,
              ),
            ),
          ],
        ),
        const Gap(20),
        Text(
          position,
          style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.teko().fontFamily,
              color: Theme.of(context).buttonTheme.colorScheme?.primary),
        ),
        Text(
          "Based in $basedIn",
          style: const TextStyle(fontSize: 18),
        ),
        const Gap(10),
        Text(
          about,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        if (webActions != null) const Gap(20),
        if (webActions != null)
          Wrap(direction: Axis.horizontal, spacing: 10, children: [
            for (final wActions in webActions!)
              IconButton(
                onPressed: () {
                  launchWithUri(Uri.parse(wActions.webUrl));
                },
                icon: ImageIcon(
                  wActions.assetImage,
                  color: Theme.of(context).textTheme.bodySmall!.color,
                ),
              )
          ]),
      ],
    );
  }
}
