import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yesareem_website/Constants/app_colors.dart';
import 'package:yesareem_website/Constants/common_header_and_footer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return CommonHeadAndFooter(
      child: Column(
        children: [
          topCard(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 64),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width > 1300
                      ? 1250
                      : MediaQuery.of(context).size.width > 1050
                          ? 750
                          : 350,
                  child: Column(
                    children: [
                      Text(
                        'Our Featured Services',
                        style: TextStyle(
                          color: Color(0xFF1363C6),
                          fontSize: 32,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF1363C6),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 64),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 359,
                            height: 224,
                            decoration: ShapeDecoration(
                              color: Color(0xDBD9D9D9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          if (MediaQuery.of(context).size.width > 1300)
                            Container(
                              width: 359,
                              height: 224,
                              decoration: ShapeDecoration(
                                color: Color(0xDBD9D9D9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          if (MediaQuery.of(context).size.width > 1050)
                            Container(
                              width: 359,
                              height: 224,
                              decoration: ShapeDecoration(
                                color: Color(0xDBD9D9D9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container topCard(BuildContext context) {
    return Container(
      color: AppColors.primaryColors,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width > 1300
                  ? 1250
                  : MediaQuery.of(context).size.width > 1050
                      ? 750
                      : 350,
              child: MediaQuery.of(context).size.width > 1050
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        topCardLeft(context, 3),
                        topCardRight(),
                      ],
                    )
                  : Column(
                      children: [
                        topCardLeft(context, 1),
                        const SizedBox(height: 32),
                        topCardRight()
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Stack topCardRight() {
    return Stack(
      children: [
        Image.asset('images/image.png'),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 170,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.primaryColors,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  'Register Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(width: 32),
              Container(
                alignment: Alignment.center,
                width: 170,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  'Contact Us ',
                  style: TextStyle(
                    color: Color(0xFF1363C6),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  SizedBox topCardLeft(BuildContext context, int divideBy) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / divideBy,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Welcome to Yesareem Learning ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Let’s grow up \nwith “Yesareem” ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 62,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w800,
              height: 1,
            ),
          ),
          SizedBox(height: 75),
          Text(
            'Unleash the full spectrum of mathematical brilliance with our all-encompassing \nlearning app. From the basics to the most advanced concepts, we guide you through every facet of mathematics.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
