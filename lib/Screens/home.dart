import 'package:flutter/material.dart';
import 'package:yesareem_website/Constants/app_colors.dart';
import 'package:yesareem_website/Constants/app_utils.dart';
import 'package:yesareem_website/Screens/about_us.dart';
import 'package:yesareem_website/Screens/app_bar.dart';
import 'package:yesareem_website/Screens/carousel.dart';
import 'package:yesareem_website/Screens/drawer_widget.dart';
import 'package:yesareem_website/Screens/sliding_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController scrollController = ScrollController();
  final eventsKey = GlobalKey();
  final aboutKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: appBar(
          context: context,
          scaffoldKey: scaffoldKey,
          eventsKey: eventsKey,
          aboutKey: aboutKey),
      drawer: DraweWidget(scrollController: scrollController),
      body: GestureDetector(
        onTap: () {
          print(MediaQuery.of(context).size.width);
        },
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: ListView(
            controller: scrollController,
            // padding: const EdgeInsets.only(top: 24),
            children: [
              mainBackDrop(context),
              Carousel(key: eventsKey),
              const SlidingText(),
              AboutUs(
                key: aboutKey,
              ),
              const TabsAndLogin()
            ],
          ),
        ),
      ),
    );
  }

  Container mainBackDrop(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: AppColors.primaryColors,
      height: MediaQuery.of(context).size.height - 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Unlock the world of knowledge with us,\nwhere learning knows no bounds.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width / 3.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/teaching-illustration.jpg'),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                'Image by pikisuperstar on Freepik  ',
                style: TextStyle(fontSize: 8),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TabsAndLogin extends StatelessWidget {
  const TabsAndLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            height: 600,
          ),
        ),
      ],
    );
  }
}
