import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vijaymakwana/widgets/aboutme.dart';

import '../widgets/section_header.dart';

class WebAbout extends StatelessWidget {
  const WebAbout({super.key});

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
          SectionHeader(title: "My Story"),
          Gap(30),
          AboutMe(),
          Gap(30),
        ],
      ),
    );
  }
}
