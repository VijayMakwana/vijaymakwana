import 'package:flutter/material.dart';
import 'package:vijaymakwana/models/skills_data.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      runSpacing: 20,
      spacing: 20,
      children: [
        for (final skill in skills)
          Text("● $skill", style: const TextStyle(fontSize: 18))
      ],
    );
  }
}
