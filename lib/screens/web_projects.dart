import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vijaymakwana/models/projects_data.dart';
import 'package:vijaymakwana/utils/helper_functions.dart';
import 'package:vijaymakwana/widgets/crousal_indicator.dart';
import 'package:vijaymakwana/widgets/hover_underline.dart';
import 'package:vijaymakwana/widgets/section_header.dart';

class WebProjects extends StatelessWidget {
  const WebProjects({super.key});

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
          const SectionHeader(title: "Projects"),
          const Gap(30),
          for (final item in projectItems)
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                              height: MediaQuery.of(context).size.width * 0.35,
                              width: MediaQuery.of(context).size.width * 0.20,
                              child:
                                  CarouselWithIndicator(imgList: item.images)),
                        )),
                    const Gap(30),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              launchWithUri(Uri.parse(item.url));
                            },
                            child: kIsWeb
                                ? HoverUnderlineText(
                                    text: item.name,
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24))
                                : Text(item.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24)),
                          ),
                          const Gap(8),
                          Text(item.desc,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16)),
                          const Gap(24),
                          const Text("Techstack:",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          const Gap(8),
                          Wrap(
                            direction: Axis.horizontal,
                            spacing: 10,
                            alignment: WrapAlignment.start,
                            children: [
                              for (final tech in item.techStacks)
                                Text("● $tech",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16))
                            ],
                          ),
                          const Gap(24),
                          const Text("Role:",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          const Gap(8),
                          Text(item.role,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16))
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(30),
                Divider(
                  height: 1,
                  color: Theme.of(context).textTheme.bodySmall!.color,
                ),
                const Gap(30),
              ],
            ),
        ],
      ),
    );
  }
}
