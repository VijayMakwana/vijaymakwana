import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vijaymakwana/models/projects_data.dart';
import 'package:vijaymakwana/utils/helper_functions.dart';
import 'package:vijaymakwana/widgets/crousal_indicator.dart';

class MobileProjects extends StatelessWidget {
  const MobileProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            for (final item in projectItems)
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                            height: 500,
                            child: CarouselWithIndicator(imgList: item.images)),
                      )),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Gap(20),
                      GestureDetector(
                        onTap: () {
                          launchWithUri(Uri.parse(item.url));
                        },
                        child: Text(item.name,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24)),
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
                                    fontWeight: FontWeight.w500, fontSize: 16))
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
                  const Gap(24),
                  Divider(
                    height: 1,
                    color: Theme.of(context).textTheme.bodySmall!.color,
                  ),
                  const Gap(24),
                ],
              )
          ],
        ),
      ),
    );
  }
}
