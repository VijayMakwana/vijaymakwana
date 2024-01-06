import 'package:flutter/material.dart';
import 'package:vijaymakwana/widgets/contact.dart';
import 'package:vijaymakwana/widgets/made_with_flutter.dart';

class MobileContact extends StatelessWidget {
  const MobileContact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [Contact(), Spacer(), MadeWithFlutterButton()],
      ),
    );
  }
}
