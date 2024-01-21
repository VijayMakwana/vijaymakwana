import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vijaymakwana/models/experiences_data.dart';
import 'package:vijaymakwana/widgets/experience_list_item.dart';

class MobileExperience extends StatelessWidget {
  const MobileExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            for (final (index, item) in experienceItems.indexed)
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      index < 9 ? "0${index + 1}" : "${index + 1}",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.teko().fontFamily,
                      ),
                    ),
                    const Gap(40),
                    Expanded(
                      child: ExperienceListItem(
                          companyName: item.companyName,
                          companyWebUrl: item.companyWebUrl,
                          position: item.position,
                          companyTimeSpan: item.companyTimeSpan,
                          projectKeyPoints: item.projectKeyPoints),
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
