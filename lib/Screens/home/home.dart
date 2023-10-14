import 'package:flutter/material.dart';
import 'package:yesareem_website/Constants/app_colors.dart';
import 'package:yesareem_website/Constants/app_utils.dart';
import 'package:yesareem_website/Screens/home/about_us.dart';
import 'package:yesareem_website/Screens/home/app_bar.dart';
import 'package:yesareem_website/Screens/home/carousel.dart';
import 'package:yesareem_website/Screens/home/drawer_widget.dart';
import 'package:yesareem_website/Screens/home/sliding_text.dart';

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
    return Title(
      color: Colors.black,
      title: "Yesareem",
      child: Scaffold(
        key: scaffoldKey,
        drawer: DraweWidget(scrollController: scrollController),
        body: Column(
          children: [
            appBar(
                context: context,
                scaffoldKey: scaffoldKey,
                eventsKey: eventsKey,
                aboutKey: aboutKey),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print(MediaQuery.of(context).size.width);
                },
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: SingleChildScrollView(
                    child: Column(
                      // padding: const EdgeInsets.only(top: 24),
                      children: [
                        mainBackDrop(context),
                        Events(
                          key: eventsKey,
                        ),
                        // Carousel(key: eventsKey),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              padding: const EdgeInsets.only(bottom: 12),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.primaryColors)),
                              child: const SlidingText()),
                        ),
                        AboutUs(
                          key: aboutKey,
                        ),
                        // const TabsAndLogin()
                        Courses(),
                        Divider(
                          color: AppColors.primaryColors,
                        ),
                        AppBar(
                          centerTitle: true,
                          toolbarHeight: 90,
                          backgroundColor: Colors.grey.shade200,
                          elevation: 0,
                          leadingWidth: 200,
                          automaticallyImplyLeading: false,
                          title: MediaQuery.of(context).size.width < 620
                              ? logoWidget(context)
                              : titleWidget(),
                          leading: MediaQuery.of(context).size.width < 620
                              ? null
                              : logoWidget(context),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container mainBackDrop(BuildContext context) {
    final double kWidth = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      color: AppColors.primaryColors,
      height: MediaQuery.of(context).size.height - 75,
      child: kWidth < 1000
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Unlock the world of knowledge with us,\nwhere learning knows no bounds.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: kWidth * 0.05,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 75,
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  height: MediaQuery.of(context).size.width / 2.3,
                  width: MediaQuery.of(context).size.width - 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/teaching-illustration.jpg'),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Text(
                      'Image by pikisuperstar on Freepik  ',
                      style: TextStyle(fontSize: kWidth * 0.008),
                    ),
                  ),
                ),
                const SizedBox(height: 64),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Unlock the world of knowledge with us,\nwhere learning knows no bounds.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: kWidth * 0.03,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  height: MediaQuery.of(context).size.width / 5,
                  width: MediaQuery.of(context).size.width / 3.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/teaching-illustration.jpg'),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Text(
                      'Image by pikisuperstar on Freepik  ',
                      style: TextStyle(fontSize: kWidth * 0.008),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}

class Events extends StatelessWidget {
  const Events({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final kHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        // height: kHeight >
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'View All Events',
                  style:
                      TextStyle(fontSize: 18, color: AppColors.primaryColors),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: AppColors.primaryColors,
                ),
                SizedBox(
                  width: 16,
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.width / 6,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/event.jpg'))),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.width / 6,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/event.jpg'))),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.width / 6,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/event.jpg'))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Courses extends StatelessWidget {
  const Courses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'View All Courses',
                style: TextStyle(fontSize: 18, color: AppColors.primaryColors),
              ),
              Icon(
                Icons.arrow_forward,
                color: AppColors.primaryColors,
              ),
              SizedBox(
                width: 16,
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 6,
                height: MediaQuery.of(context).size.width / 12,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/course.jpg'))),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 6,
                height: MediaQuery.of(context).size.width / 12,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/course.jpg'))),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 6,
                height: MediaQuery.of(context).size.width / 12,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/course.jpg'))),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 6,
                height: MediaQuery.of(context).size.width / 12,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/course.jpg'))),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 6,
                height: MediaQuery.of(context).size.width / 12,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/course.jpg'))),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 6,
                height: MediaQuery.of(context).size.width / 12,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/course.jpg'))),
              ),
            ],
          ),
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
