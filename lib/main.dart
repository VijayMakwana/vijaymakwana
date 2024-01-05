import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vijaymakwana/responsive/responsive_layout.dart';
import 'package:vijaymakwana/screens/mobile_screen.dart';
import 'package:vijaymakwana/screens/web_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(App(savedThemeMode: savedThemeMode));
}

class App extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;

  const App({super.key, this.savedThemeMode});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.workSans().fontFamily,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.green,
      ),
      dark: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.workSans().fontFamily,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.green,
      ),
      initial: savedThemeMode ?? AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        scrollBehavior:
            ScrollConfiguration.of(context).copyWith(scrollbars: false),
        theme: theme,
        darkTheme: darkTheme,
        home: const ResponsiveLayout(
          mobileScreen: MobileScreen(),
          webScreen: WebScreen(),
        ),
      ),
    );
  }
}
