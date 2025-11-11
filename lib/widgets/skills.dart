import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vijaymakwana/models/skills_data.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final skill in skills)
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("➤ ${skill.title}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Expanded(child: Text(skill.skills, style: const TextStyle(fontSize: 18))),
          ],),

        const Gap(10)
      ],
    );
  }
}
