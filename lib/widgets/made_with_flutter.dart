import 'package:flutter/material.dart';
import 'package:vijaymakwana/image_paths.dart';
import 'package:vijaymakwana/utils/helper_functions.dart';
import 'package:vijaymakwana/widgets/hover_underline.dart';

class MadeWithFlutterButton extends StatelessWidget {
  const MadeWithFlutterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("Made with ", style: TextStyle(fontSize: 16)),
        const Icon(
          Icons.favorite,
          size: 20,
          color: Colors.red,
        ),
        const Text(" in ", style: TextStyle(fontSize: 16)),
        SizedBox(
            width: 20, height: 20, child: Image.asset(ImagesPath.iconflutter)),
        GestureDetector(
            onTap: () {
              launchWithUri(Uri.parse("https://flutter.dev/"));
            },
            child: const HoverUnderlineText(
                text: "Flutter", textStyle: TextStyle(fontSize: 16)))
      ],
    );
  }
}
