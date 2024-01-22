import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vijaymakwana/utils/helper_functions.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            final Uri emailLaunchUri =
                Uri(scheme: 'mailto', path: 'makwanavijay153@gmail.com');
            launchWithUri(emailLaunchUri);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Theme.of(context).buttonTheme.colorScheme!.primary,
                ),
                const Gap(16),
                const Text("makwanavijay153@gmail.com",
                    style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
