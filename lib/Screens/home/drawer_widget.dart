import 'package:flutter/material.dart';
import 'package:yesareem_website/Constants/app_colors.dart';

class DraweWidget extends StatelessWidget {
  const DraweWidget({super.key, required ScrollController scrollController});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            logoWidget(context),
            const SizedBox(
              height: 50,
            ),
            drawerTile(title: "About Us"),
            dividerWidget(),
            drawerTile(title: "Activities"),
            dividerWidget(),
            drawerTile(title: "Events"),
            dividerWidget(),
            drawerTile(title: "Knowledge Center"),
            dividerWidget(),
            drawerTile(title: "Community"),
            dividerWidget(),
            drawerTile(title: "Academics"),
            dividerWidget(),
            drawerTile(title: "Admissions"),
            dividerWidget(),
            drawerTile(title: "Aboout Us"),
            dividerWidget(),
            drawerTile(title: "Careers"),
            dividerWidget(),
            drawerTile(title: "Contact Us"),
          ],
        ),
      ),
    );
  }

  SizedBox dividerWidget() {
    return SizedBox(
      width: 250,
      child: Divider(
        color: AppColors.greyColor,
      ),
    );
  }

  GestureDetector drawerTile({required String title}) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 200,
        alignment: Alignment.centerLeft,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          // color: Colors.red,
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: AppColors.primaryColors,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  GestureDetector logoWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
      },
      child: const Padding(
        padding: EdgeInsets.only(top: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: 50,
              width: 70,
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
}
