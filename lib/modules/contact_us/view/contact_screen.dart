// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yesareem_website/Constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yesareem_website/Constants/app_utils.dart';
import 'package:http/http.dart' as http;

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        topCard(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 48),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width > 1300
                        ? 1250
                        : MediaQuery.of(context).size.width > 1050
                            ? 750
                            : 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            const Text(
                              'Contact Us',
                              style: TextStyle(
                                color: Color(0xFF1363C6),
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Text(
                              'Use the following form to Contact Us',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF1363C6),
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 64),
                            const Text(
                              'Yesareem Solutions Private Limited  ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF1363C6),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: AppColors.primaryColors,
                                ),
                                SizedBox(width: 8),
                                Flexible(
                                  child: Text(
                                    '5/200, Neeramthanath (H), Ramapuram Bazar P.O, Ramapuram, Kottayam, KERALA, 686576.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF1363C6),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            MediaQuery.of(context).size.width < 1050
                                ? Column(
                                    children: [
                                      email(),
                                      phone(),
                                    ],
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      email(),
                                      const SizedBox(width: 32),
                                      phone(),
                                    ],
                                  ),
                            const SizedBox(height: 64),
                            TextField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Name",
                              ),
                            ),
                            const SizedBox(height: 16),
                            TextField(
                              controller: emailController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Email",
                              ),
                            ),
                            const SizedBox(height: 16),
                            TextField(
                              controller: subjectController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Subject",
                              ),
                            ),
                            const SizedBox(height: 16),
                            TextField(
                              controller: messageController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Message",
                              ),
                              minLines: 8,
                              maxLines: 8,
                            ),
                            const SizedBox(height: 24),
                            GestureDetector(
                              onTap: () async {
                                if (nameController.text.trim().isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Please Enter Name"),
                                      backgroundColor: Colors.red,
                                      showCloseIcon: true,
                                    ),
                                  );
                                } else if (emailController.text
                                    .trim()
                                    .isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Please Enter Email"),
                                      backgroundColor: Colors.red,
                                      showCloseIcon: true,
                                    ),
                                  );
                                } else if (messageController.text
                                    .trim()
                                    .isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Please Enter Message"),
                                      backgroundColor: Colors.red,
                                      showCloseIcon: true,
                                    ),
                                  );
                                } else {
                                  showDialog(
                                    context: context,
                                    builder: (context) => const Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                  final String date =
                                      '${'${DateTime.now().day}'} ${AppUtils.monthName(DateTime.now().month)} ${DateTime.now().year}';
                                  final String time =
                                      '${DateTime.now().hour % 12}:${DateTime.now().minute} ${DateTime.now().hour > 12 ? 'PM' : 'AM'}';
                                  final parameterString =
                                      "?name=${nameController.text.trim()}&email=${emailController.text.trim()}&date=$date&time=$time&subject=${subjectController.text}&content=${messageController.text}";
                                  const url =
                                      'https://script.google.com/macros/s/AKfycby_SPYyhAf6XgA1pdcjVLhHF5mNbyx3F_V8xHQvY1eKVHcDDQA9pgS4WxghoQ4-gz1n_w/exec';
                                  final response = await http
                                      .get(Uri.parse(url + parameterString));
                                  final body = await jsonDecode(response.body);
                                  if (body['status'] == "SUCCESS") {
                                    nameController.clear();
                                    emailController.clear();
                                    subjectController.clear();
                                    messageController.clear();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content:
                                            Text('Message sent successfully'),
                                        backgroundColor: Colors.green,
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Center(
                                            child: Text('Message sent failed')),
                                        backgroundColor: Colors.red,
                                      ),
                                    );
                                  }
                                  Navigator.pop(context);
                                }
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.primaryColors,
                                ),
                                child: const Text(
                                  'Submit',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            )
                          ],
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

  Row phone() {
    return const Row(
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
    );
  }

  Row email() {
    return const Row(
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
    );
  }

  Column topCard() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // const Text(
        //   'Let’s grow up \nwith Yesareem ',
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 48,
        //     fontWeight: FontWeight.w600,
        //   ),
        // ),
        // const SizedBox(height: 24),
        // const Text(
        //   'Unleash the full spectrum of mathematical brilliance with our all-encompassing \nlearning app. From the basics to the most advanced concepts, we guide you through \nevery facet of mathematics, turning complexity into clarity, and making mastery \nachievable at every level.',
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 15,
        //     fontWeight: FontWeight.w400,
        //   ),
        // ),
        // const SizedBox(height: 32),
        // Row(
        //   children: [
        //     Container(
        //       alignment: Alignment.center,
        //       width: 126,
        //       height: 48,
        //       decoration: BoxDecoration(
        //         border: Border.all(width: 2, color: Colors.white),
        //         borderRadius: BorderRadius.circular(4),
        //       ),
        //       child: const Text(
        //         'Know More',
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 13,
        //           fontWeight: FontWeight.w600,
        //         ),
        //       ),
        //     ),
        //     const SizedBox(width: 32),
        //     Container(
        //       alignment: Alignment.center,
        //       width: 126,
        //       height: 48,
        //       decoration: BoxDecoration(
        //         color: Colors.white,
        //         borderRadius: BorderRadius.circular(4),
        //       ),
        //       child: const Text(
        //         'Register Now!',
        //         style: TextStyle(
        //           color: AppColors.primaryColors,
        //           fontSize: 13,
        //           fontWeight: FontWeight.w600,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        // const SizedBox(height: 32),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Contact Us",
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
    );
  }
}

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
              children: [footerLeft(), rightOne(), rightTwo()],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [footerLeft(), footerRight()],
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
          "Terms & Conditions Privacy policy",
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
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColors,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Register Now ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
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
                SvgPicture.asset('images/x.svg'),
                const SizedBox(width: 8),
                SvgPicture.asset('images/instagram.svg'),
                const SizedBox(width: 8),
                SvgPicture.asset('images/facebook.svg'),
                const SizedBox(width: 16),
                const Text(
                  '@yesareemsolutions',
                  style: TextStyle(
                    color: Color(0xFF1363C6),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                )
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
        subFooter(
          "Our Activities and Events",
          'Mathematical Camp',
          'Exhibitions',
          'Mathematical Park',
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
            letterSpacing: 1.3,
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          second,
          style: const TextStyle(
            color: Colors.black,
            letterSpacing: 1.3,
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          third,
          style: const TextStyle(
            color: Colors.black,
            letterSpacing: 1.3,
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          fourth,
          style: const TextStyle(
            color: Colors.black,
            letterSpacing: 1.3,
            fontSize: 13,
            fontWeight: FontWeight.w600,
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
