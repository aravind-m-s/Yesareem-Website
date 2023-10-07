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
    final double kWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width,
      color: AppColors.primaryColors,
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            kWidth < 1080 ? hamburgerButton() : const SizedBox(),
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
                kWidth < 1080
                    ? const SizedBox()
                    : kWidth < 1610
                        ? minWidthAppBar(context)
                        : maxWidthAppBar(context),
              ],
            ),
            const Expanded(child: SizedBox()),
            kWidth < 520 ? const SizedBox() : searchBox(kWidth),
          ],
        ),
      ),
    );
  }

  Padding minWidthAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          DropdownButtonHideUnderline(
            child: DropdownButton(
              isDense: true,
              dropdownColor: AppColors.primaryColors,
              value: null,
              hint: drawerTile(title: 'Community'),
              items: [
                DropdownMenuItem(
                  value: 'Community',
                  child: drawerTile(title: 'Community'),
                ),
                DropdownMenuItem(
                  value: 'Activities',
                  child: drawerTile(title: 'Activities'),
                ),
                DropdownMenuItem(
                  value: 'Events',
                  child: drawerTile(title: 'Events'),
                ),
              ],
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
              onChanged: (value) {},
            ),
          ),
          const SizedBox(width: 20),
          DropdownButtonHideUnderline(
            child: DropdownButton(
              value: 'About Us',
              items: [
                DropdownMenuItem(
                  value: 'About Us',
                  child: drawerTile(title: 'About Us'),
                ),
                DropdownMenuItem(
                  value: 'Contact Us',
                  child: drawerTile(title: 'Contact Us'),
                ),
                DropdownMenuItem(
                  value: 'Careers',
                  child: drawerTile(title: 'Careers'),
                ),
              ],
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
              onChanged: (value) {},
            ),
          ),
          const SizedBox(width: 20),
          DropdownButtonHideUnderline(
            child: DropdownButton(
              dropdownColor: AppColors.primaryColors,
              focusColor: AppColors.primaryColors,
              value: 'Academics',
              items: [
                DropdownMenuItem(
                  value: 'Academics',
                  child: drawerTile(title: 'Academics'),
                ),
                DropdownMenuItem(
                  value: 'Admissions',
                  child: drawerTile(title: 'Admissions'),
                ),
                DropdownMenuItem(
                  value: 'Knowledge Center',
                  child: drawerTile(title: 'Knowledge Center'),
                ),
              ],
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }

  Padding maxWidthAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
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
          drawerTile(title: 'Contact Us', context: context),
        ],
      ),
    );
  }

  GestureDetector drawerTile(
      {required String title, BuildContext? context, GlobalKey? key}) {
    return GestureDetector(
      onTap: () {
        if (key != null) {
          Scrollable.ensureVisible(
            key.currentContext!,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        } else {
          if (title == "Contact Us") {
            Navigator.of(context!).pushNamed('/contact-us');
          }
        }
      },
      child: Container(
        // width: 200,
        padding: EdgeInsets.zero,
        alignment: Alignment.centerLeft,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          // color: AppColors.primaryColors,
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

  Widget searchBox(double kWidth) {
    return ExpandableSearchBar(
      onTap: () {},
      hintText: 'Search Here',
      editTextController: TextEditingController(),
      backgroundColor: Colors.white,
      iconBackgroundColor: Colors.white,
      width: kWidth < 650
          ? 200
          : kWidth < 1610
              ? 300
              : 400,
      iconColor: AppColors.primaryColors,
    );
  }

  Widget hamburgerButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        onTap: () {
          scaffoldKey.currentState!.openDrawer();
        },
        child: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
