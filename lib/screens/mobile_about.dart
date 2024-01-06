import 'package:flutter/material.dart';
import 'package:vijaymakwana/widgets/aboutme.dart';

class MobileAbout extends StatelessWidget {
  const MobileAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.all(16.0),
      child: AboutMe(),
    ));
  }
}
