import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yesareem_website/Constants/app_colors.dart';

class CommonHeadAndFooter extends StatelessWidget {
  final Widget child;
  const CommonHeadAndFooter({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.primaryColors,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Header(),
                  ),
                ],
              ),
            ),
            SizedBox(
              // width: MediaQuery.of(context).size.width > 1300 ?1250 : 1000,
              child: child,
            ),
            Container(
              color: AppColors.footerColor,
              padding: const EdgeInsets.symmetric(vertical: 80),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Footer(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width > 1300
          ? 1250
          : width > 1050
              ? 1000
              : 350,
      child: width < 1050
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                footerLeft(),
                rightOne(),
                rightTwo(),
                const SizedBox(height: 40),
                copyright()
              ],
            )
          : Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    footerLeft(),
                    footerRight(),
                  ],
                ),
                copyright()
              ],
            ),
    );
  }

  Text copyright() {
    return const Text(
      'Copyright © 2024 All rights reserved | This Website by Yesareem Solutions',
      style: TextStyle(
        color: Color(0xFF535354),
        fontSize: 11,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Row footerRight() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        rightOne(),
        const SizedBox(width: 75),
        rightTwo(),
      ],
    );
  }

  Column rightTwo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        subFooter(
          "Signup/Login",
          'Terms and conditions',
          'Privacy Policy',
          'Cancellation and Refund',
          'Shipping policy',
        ),
        const SizedBox(height: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColors),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.file_download_outlined,
                        color: AppColors.primaryColors,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Yesareem Learning App ',
                        style: TextStyle(
                          color: AppColors.primaryColors,
                          fontSize: 12,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                const Text(
                  '@yesareemsolutions',
                  style: TextStyle(
                    color: Color(0xFF1363C6),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 16),
                SvgPicture.asset(
                  'images/x.svg',
                  color: Colors.grey,
                ),
                const SizedBox(width: 8),
                SvgPicture.asset(
                  'images/instagram.svg',
                  color: Colors.grey,
                ),
                const SizedBox(width: 8),
                SvgPicture.asset(
                  'images/facebook.svg',
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Column rightOne() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        subFooter(
          "Our Exclusive Services",
          'Wings of Maths',
          'Miss/Mr Yesareem',
          'Dr Yesareem',
        ),
        const Text(
          "Our Activities and Events",
          style: TextStyle(
            color: Color(0xFF1363C6),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Text(
              "Register Now",
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: AppColors.primaryColors,
                color: Color(0xFF1363C6),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: AppColors.primaryColors,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward_outlined,
                color: Colors.white,
                size: 18,
              ),
            )
          ],
        ),
      ],
    );
  }

  Column footerLeft() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset('images/blue_logo.svg'),
        const SizedBox(height: 32),
        const Text(
          'YESAREEM SOLUTIONS PRIVATE LIMITED, \nestablished in 2023, is an Ed-Tech company.\nFocused on making mathematics accessible\nand eliminating associated learning stigmas.',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 24),
        const Row(
          children: [
            Icon(
              Icons.mail,
              color: AppColors.primaryColors,
            ),
            SizedBox(width: 8),
            Text(
              'yesareemsolutions@gmail.com',
              style: TextStyle(
                color: AppColors.primaryColors,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        const SizedBox(height: 8),
        const Row(
          children: [
            Icon(
              Icons.phone,
              color: AppColors.primaryColors,
            ),
            SizedBox(width: 8),
            Text(
              '+91 8891 007 112',
              style: TextStyle(
                color: AppColors.primaryColors,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        const SizedBox(height: 32),
      ],
    );
  }

  Column subFooter(String title, String first, String second, String third,
      [String fourth = '']) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF1363C6),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          first,
          style: const TextStyle(
            color: Colors.black,

            fontSize: 13,
            // fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          second,
          style: const TextStyle(
            color: Colors.black,

            fontSize: 13,
            // fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          third,
          style: const TextStyle(
            color: Colors.black,

            fontSize: 13,
            // fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          fourth,
          style: const TextStyle(
            color: Colors.black,

            fontSize: 13,
            // fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColors,
      height: 130,
      width: MediaQuery.of(context).size.width > 1300
          ? 1250
          : MediaQuery.of(context).size.width > 1050
              ? 800
              : 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('images/logo.svg'),
          if (MediaQuery.of(context).size.width < 1050)
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ))
          else
            const Row(
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  'Courses',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  'Services',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  'Contact Us',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            )
        ],
      ),
    );
  }
}
