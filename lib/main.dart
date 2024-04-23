import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:yesareem_website/modules/contact_us/view/contact_screen.dart';
import 'package:yesareem_website/modules/courses/view/courses_screen.dart';
import 'package:yesareem_website/modules/home/view/home_screen.dart';

// ignore: prefer_const_constructors
PathUrlStrategy path = PathUrlStrategy();

void main() {
  setUrlStrategy(path);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
        fontFamily: 'Inter',
        scaffoldBackgroundColor: Colors.grey.shade200,
      ),
      initialRoute: path.getPath(),
      title: "Yesareem",
      routes: {
        '/': (context) => const HomeScreen(),
        '/contact': (context) => const ContactScreen(),
        '/courses': (context) => const CoursesScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (_) => const HomeScreen());
        } else if (settings.name == '/contact') {
          return MaterialPageRoute(builder: (_) => const ContactScreen());
        } else if (settings.name == '/courses') {
          return MaterialPageRoute(builder: (_) => const CoursesScreen());
        }
        return null;
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      },
    );
  }
}
