import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vijaymakwana/widgets/section_header.dart';
import 'package:vijaymakwana/widgets/skills.dart';

class WebSkills extends StatelessWidget {
  const WebSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(120),
          SectionHeader(title: "Skills"),
          Gap(30),
          Skills(),
          Gap(30),
        ],
      ),
    );
  }
}
