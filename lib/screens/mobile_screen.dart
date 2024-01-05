import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vijaymakwana/screens/mobile_home.dart';
import 'package:vijaymakwana/widgets/theme_change_button.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Vijay Makwana",
              style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.teko().fontFamily)),
          centerTitle: false,
          actions: const [
            ThemeChangeButton(iconSize: 24),
          ],
          bottom: const TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(text: "Home"),
              Tab(text: "Projects"),
              Tab(text: "Experience"),
              Tab(text: "Skills"),
              Tab(text: "About me"),
              Tab(text: "Contact me"),
            ],
          ),
        ),
        body: const MobileHome(),
      ),
    );
  }
}
