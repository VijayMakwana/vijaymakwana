import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vijaymakwana/global_keys.dart';
import 'package:vijaymakwana/widgets/hover_underline.dart';
import 'package:vijaymakwana/widgets/theme_change_button.dart';

class WebMenuHeader extends StatelessWidget {
  const WebMenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderOnForeground: true,
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HoverUnderlineText(
              text: "Vijay Makwana",
              textStyle: TextStyle(
                  fontSize: 30,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.teko().fontFamily),
              onClick: () {
                Scrollable.ensureVisible(GlobalKeys.KEY_PROFILE.currentContext!,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.easeOut);
              },
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  HoverUnderlineText(
                      text: "Projects",
                      textStyle: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      onClick: () {
                        Scrollable.ensureVisible(
                            GlobalKeys.KEY_PROJECTS.currentContext!,
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.easeOut);
                      }),
                  const Gap(40),
                  HoverUnderlineText(
                      text: "Experience",
                      textStyle: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      onClick: () {
                        Scrollable.ensureVisible(
                            GlobalKeys.KEY_EXPERIENCE.currentContext!,
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.easeOut);
                      }),
                  const Gap(40),
                  HoverUnderlineText(
                      text: "Skills",
                      textStyle: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      onClick: () {
                        Scrollable.ensureVisible(
                            GlobalKeys.KEY_SKILLS.currentContext!,
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.easeOut);
                      }),
                  const Gap(40),
                  HoverUnderlineText(
                      text: "About me",
                      textStyle: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      onClick: () {
                        Scrollable.ensureVisible(
                            GlobalKeys.KEY_ABOUTME.currentContext!,
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.easeOut);
                      }),
                  const Gap(40),
                  HoverUnderlineText(
                      text: "Contact me",
                      textStyle: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      onClick: () {
                        print("Contact me Clicked");
                      }),
                ],
              ),
            ),
            const Gap(50),
            const ThemeChangeButton(iconSize: 24),
          ],
        ),
      ),
    );
  }
}
