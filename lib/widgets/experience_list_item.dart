import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ExperienceListItem extends StatelessWidget {
  const ExperienceListItem(
      {super.key,
      required this.companyName,
      required this.position,
      required this.year,
      required this.keyPoints});

  final String companyName;
  final String position;
  final String year;
  final List<String> keyPoints;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(position,
            style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).buttonTheme.colorScheme!.primary)),
        Row(
          children: [
            Text(companyName,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Gap(12),
            Text(year, style: const TextStyle(fontSize: 14)),
          ],
        ),
        const Gap(10),
        for (final point in keyPoints)
          Text("● $point", style: const TextStyle(fontSize: 16))
      ],
    );
  }
}
