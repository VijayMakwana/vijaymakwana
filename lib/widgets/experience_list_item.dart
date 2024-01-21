import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vijaymakwana/models/project_keypoint.dart';
import 'package:vijaymakwana/utils/helper_functions.dart';
import 'package:vijaymakwana/widgets/hover_underline.dart';

class ExperienceListItem extends StatelessWidget {
  const ExperienceListItem(
      {super.key,
      required this.companyName,
      required this.companyWebUrl,
      required this.position,
      required this.companyTimeSpan,
      required this.projectKeyPoints});

  final String companyName;
  final String companyWebUrl;
  final String position;
  final String companyTimeSpan;
  final List<ProjectKeyPoint> projectKeyPoints;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(position,
            style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).buttonTheme.colorScheme!.primary)),
        Row(
          children: [
            HoverUnderlineText(
                text: companyName,
                onClick: () {
                  launchWithUri(Uri.parse(companyWebUrl));
                },
                textStyle:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Gap(10),
            Expanded(
                child: Text(companyTimeSpan,
                    style: const TextStyle(fontSize: 14))),
          ],
        ),
        const Gap(10),
        for (final projectKeyPoint in projectKeyPoints)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              projectKeyPoint.projectUrl != null
                  ? Row(
                      children: [
                        const Text("● ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        Expanded(
                          child: HoverUnderlineText(
                              text: projectKeyPoint.projectName,
                              onClick: () {
                                launchWithUri(
                                    Uri.parse(projectKeyPoint.projectUrl!));
                              },
                              textStyle: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    )
                  : Text("● ${projectKeyPoint.projectName}",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
              const Gap(4),
              for (final point in projectKeyPoint.keyPoints)
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text("➤ $point", style: const TextStyle(fontSize: 16)),
                ),
              const Gap(12),
            ],
          )
      ],
    );
  }
}
