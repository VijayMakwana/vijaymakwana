import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vijaymakwana/models/experiences_data.dart';
import 'package:vijaymakwana/widgets/experience_list_item.dart';
import 'package:vijaymakwana/widgets/section_header.dart';

class WebExperience extends StatelessWidget {
  const WebExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Gap(120),
          const SectionHeader(title: "Experience"),
          const Gap(30),
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
                        position: item.position,
                        year: item.year,
                        keyPoints: item.keyPoints),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
