import 'package:flutter/material.dart';
import 'package:yesareem_website/Constants/app_colors.dart';
import 'package:yesareem_website/Screens/home/search_bar.dart';

PreferredSize appBar(
    {required BuildContext context,
    required GlobalKey<ScaffoldState> scaffoldKey,
    required GlobalKey eventsKey,
    required GlobalKey aboutKey}) {
  return PreferredSize(
    preferredSize: Size(MediaQuery.of(context).size.width, 75),
    child: Column(
      children: [
        // AppBar(
        //   centerTitle: true,
        //   toolbarHeight: 90,
        //   backgroundColor: Colors.grey.shade200,
        //   elevation: 0,
        //   leadingWidth: 200,
        //   title: titleWidget(),
        //   leading: logoWidget(context),
        // ),
        // const SizedBox(
        //   height: 16,
        // ),
        SearchAndHamburgerWidget(
          scaffoldKey: scaffoldKey,
          eventsKey: eventsKey,
          aboutKey: aboutKey,
        ),
      ],
    ),
  );
}

Widget titleWidget() {
  return const Padding(
    padding: EdgeInsets.only(top: 12.0),
    child: Column(
      children: [
        Text(
          'Yesareem Solutions Private Limited',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryColors,
          ),
        ),
        Text(
          'DIPP 130607 / 2023 / KSUM 3027',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: AppColors.primaryColors,
          ),
        ),
      ],
    ),
  );
}

Widget logoWidget(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
      },
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            height: 50,
            width: 100,
            image: AssetImage(
              'images/logo.png',
            ),
          ),
          Text(
            'Yesareem',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColors,
            ),
          )
        ],
      ),
    ),
  );
}
