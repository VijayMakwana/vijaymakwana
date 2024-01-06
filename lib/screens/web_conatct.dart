import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vijaymakwana/widgets/contact.dart';
import 'package:vijaymakwana/widgets/section_header.dart';

class WebContact extends StatelessWidget {
  const WebContact({super.key});

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
          SectionHeader(title: "Contact"),
          Gap(30),
          Contact(),
          Gap(30),
        ],
      ),
    );
  }
}
