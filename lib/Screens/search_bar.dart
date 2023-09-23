import 'package:expandable_search_bar/expandable_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:yesareem_website/Constants/app_colors.dart';

class SearchAndHamburgerWidget extends StatelessWidget {
  const SearchAndHamburgerWidget(
      {super.key,
      required this.scaffoldKey,
      required this.eventsKey,
      required this.aboutKey});

  final GlobalKey eventsKey;
  final GlobalKey aboutKey;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width,
      color: AppColors.primaryColors,
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // hamburgerButton(),
            Row(
              children: [
                Image.asset(
                  'images/logo.png',
                  color: Colors.white,
                  height: 30,
                ),
                const Text(
                  '  Yesareem',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 50,
                ),
                drawerTile(title: 'Activities'),
                const SizedBox(
                  width: 20,
                ),
                drawerTile(title: 'Events', key: eventsKey),
                const SizedBox(
                  width: 20,
                ),
                drawerTile(title: 'Knowledge Center'),
                const SizedBox(
                  width: 20,
                ),
                drawerTile(title: 'Community'),
                const SizedBox(
                  width: 20,
                ),
                drawerTile(title: 'Academics'),
                const SizedBox(
                  width: 20,
                ),
                drawerTile(title: 'Admissions'),
                const SizedBox(
                  width: 20,
                ),
                drawerTile(title: 'Careers'),
                const SizedBox(
                  width: 20,
                ),
                drawerTile(title: 'About Us', key: aboutKey),
                const SizedBox(
                  width: 20,
                ),
                drawerTile(title: 'Contact Us'),
              ],
            ),
            searchBox(),
          ],
        ),
      ),
    );
  }

  GestureDetector drawerTile({required String title, GlobalKey? key}) {
    return GestureDetector(
      onTap: () {
        if (key != null) {
          Scrollable.ensureVisible(
            key.currentContext!,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        }
      },
      child: Container(
        // width: 200,
        alignment: Alignment.centerLeft,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          // color: Colors.red,
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget searchBox() {
    return ExpandableSearchBar(
      onTap: () {},
      hintText: 'Search Here',
      editTextController: TextEditingController(),
      backgroundColor: Colors.white,
      iconBackgroundColor: Colors.white,
      width: 400,
      iconColor: AppColors.primaryColors,
    );
  }

  GestureDetector hamburgerButton() {
    return GestureDetector(
      onTap: () {
        scaffoldKey.currentState!.openDrawer();
      },
      child: const Icon(
        Icons.menu,
        color: Colors.white,
        size: 50,
      ),
    );
  }
}
