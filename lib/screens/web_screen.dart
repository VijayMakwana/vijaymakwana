import 'package:flutter/material.dart';
import 'package:vijaymakwana/widgets/web_menu_header.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        WebMenuHeader(),
        Expanded(child: Center(child: Text("Web Screen"))),
      ],
    ));
  }
}
