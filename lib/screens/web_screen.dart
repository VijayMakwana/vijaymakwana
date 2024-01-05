import 'package:flutter/material.dart';
import 'package:vijaymakwana/global_keys.dart';
import 'package:vijaymakwana/screens/web_home.dart';
import 'package:vijaymakwana/screens/web_projects.dart';
import 'package:vijaymakwana/widgets/web_menu_header.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        WebMenuHeader(key: GlobalKeys.KEY_WEB_HEADER),
        Expanded(
            child: SingleChildScrollView(
                child: Column(
          children: [
            WebHome(key: GlobalKeys.KEY_WEB_HOME),
            WebProjects(key: GlobalKeys.KEY_WEB_PROJECTS),
          ],
        ))),
      ],
    ));
  }
}
