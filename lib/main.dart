import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:yesareem_website/Constants/app_colors.dart';
import 'package:yesareem_website/Screens/home.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.outfitTextTheme(Theme.of(context).textTheme),
        fontFamily: 'Outfit',
        scaffoldBackgroundColor: Colors.grey.shade200,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/second': (context) => const MyWidget2(),
      },
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/second');
            },
            child: Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
        ],
      ),
    );
  }
}

class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            key: Key('second'),
            color: Colors.green,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ],
      ),
    );
  }
}
