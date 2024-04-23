import 'package:flutter/material.dart';
import 'package:yesareem_website/Constants/app_colors.dart';
import 'package:yesareem_website/Constants/common_header_and_footer.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CommonHeadAndFooter(
      child: Column(
        children: [
          Container(
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
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 50.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Courses",
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 100),
            color: Colors.white,
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xFFF4F4F4),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 50.0),
                          child: Wrap(
                              runSpacing: 50,
                              spacing: 40,
                              children:
                                  List.generate(15, (index) => cardWidget())),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container cardWidget() {
    return Container(
      width: 300,
      height: 364,
      decoration: ShapeDecoration(
        color: const Color(0xDBD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
