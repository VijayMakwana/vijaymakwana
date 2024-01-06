import 'package:flutter/material.dart';
import 'package:vijaymakwana/widgets/skills.dart';

class MobileSkills extends StatelessWidget {
  const MobileSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Skills(),
      ),
    );
  }
}
