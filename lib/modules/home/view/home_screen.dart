import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
                      const Text(
                        'Our Featured Services',
                        style: TextStyle(
                          color: Color(0xFF1363C6),
                          fontSize: 32,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF1363C6),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 64),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 359,
                            height: 224,
                            decoration: ShapeDecoration(
                              color: const Color(0xDBD9D9D9),
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
                                color: const Color(0xDBD9D9D9),
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
                                color: const Color(0xDBD9D9D9),
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
          Container(
            padding: const EdgeInsets.symmetric(vertical: 100),
            color: const Color(0xFFF1F0F0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultTabController(
                  length: MediaQuery.of(context).size.width > 1300
                      ? 4
                      : MediaQuery.of(context).size.width > 1050
                          ? 3
                          : 2,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width > 1300
                        ? 1250
                        : MediaQuery.of(context).size.width > 1050
                            ? 750
                            : 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TabBar(
                          indicatorColor: AppColors.primaryColors,
                          tabs: [
                            const SizedBox(
                              height: 40,
                              child: Text(
                                'Mathematics',
                                style: TextStyle(
                                  color: Color(0xFF1363C6),
                                  fontSize: 15,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                              child: Text(
                                'Physics',
                                style: TextStyle(
                                  color: Color(0xFF1363C6),
                                  fontSize: 15,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            if (MediaQuery.of(context).size.width > 1300)
                              const SizedBox(
                                height: 40,
                                child: Text(
                                  'Chemistry',
                                  style: TextStyle(
                                    color: Color(0xFF1363C6),
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            if (MediaQuery.of(context).size.width > 1050)
                              const SizedBox(
                                height: 40,
                                child: Text(
                                  'Biology',
                                  style: TextStyle(
                                    color: Color(0xFF1363C6),
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                          ],
                        ),
                        const SizedBox(height: 32),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 359,
                              height: 224,
                              decoration: ShapeDecoration(
                                color: const Color(0xDBD9D9D9),
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
                                  color: const Color(0xDBD9D9D9),
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
                                  color: const Color(0xDBD9D9D9),
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
          ),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Our Activities and Events',
                        style: TextStyle(
                          color: Color(0xFF1363C6),
                          fontSize: 32,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 64),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 359,
                                height: 224,
                                decoration: ShapeDecoration(
                                  color: const Color(0xDBD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Mathematical Camps',
                                    style: TextStyle(
                                      color: Color(0xFF282828),
                                      fontSize: 20,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: AppColors.primaryColors,
                                  ),
                                ],
                              )
                            ],
                          ),
                          if (MediaQuery.of(context).size.width > 1300)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 359,
                                  height: 224,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xDBD9D9D9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Exhibitions',
                                      style: TextStyle(
                                        color: Color(0xFF282828),
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: AppColors.primaryColors,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          if (MediaQuery.of(context).size.width > 1050)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 359,
                                  height: 224,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xDBD9D9D9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Educational Park',
                                      style: TextStyle(
                                        color: Color(0xFF282828),
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: AppColors.primaryColors,
                                    ),
                                  ],
                                )
                              ],
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 100),
            color: const Color(0xFFF1F0F0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width > 1300
                      ? 1250
                      : MediaQuery.of(context).size.width > 1050
                          ? 750
                          : 350,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mission ',
                        style: TextStyle(
                          color: Color(0xFF737373),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'We find out and We cure it',
                        style: TextStyle(
                          color: Color(0xFF1363C6),
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 32),
                      Text(
                        'We are in the budding stage of fulfilling our vision of "Maths for All" into reality. We must harness the power of Mathematics because a world cannot progress without understanding the core concept of Maths. We at Yesareem Solutions unfold answers and conclusions to various challenging issues of Maths similar to a Doctor diagnosing and finding a cure for a medical ailment. Through meticulous exploring and research, we aim to transform challenges of Mathematics into opportunities for growth, understanding and advancement at all levels.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 70),
                    color: AppColors.primaryColors,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width > 1300
                              ? 1250
                              : MediaQuery.of(context).size.width > 1050
                                  ? 750
                                  : 350,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
      child: Column(
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
            'Let’s grow up \nwith “ Yesareem ” ',
            style: GoogleFonts.montserrat().copyWith(
              color: Colors.white,
              fontSize: 62,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 32),
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
