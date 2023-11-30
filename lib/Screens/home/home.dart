import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:yesareem_website/Constants/app_colors.dart';
import 'package:yesareem_website/Constants/app_utils.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return websiteScaffold(context);
  }

  Widget websiteScaffold(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(MediaQuery.of(context).size.width);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 150),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                topWidget(context),
                appBarItems(context),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              backdrop(context),
              aboutUs(context),
              const SizedBox(height: 200),
              courses(context),
              signUpSection(context),
              startupMissions(),
              footer(context)
            ],
          ),
        ),
      ),
    );
  }

  Container footer(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 200,
      color: const Color(0xFFe9e3e2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/contact-us');
                },
                child: const Text('Contact Us'),
              ),
              const SizedBox(width: 50),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/website-policies');
                },
                child: const Text('Website Policies'),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/terms-and-conditions');
                },
                child: const Text('Terms and Conditions'),
              ),
              const SizedBox(width: 50),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/privacy-policy');
                },
                child: const Text('Privacy Policy'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/shipping-and-refund');
                },
                child: const Text('Shipping and Return'),
              ),
              // const SizedBox(width: 50),
              // TextButton(
              //   onPressed: () {
              //     Navigator.of(context).pushNamed('/privacy-policy');
              //   },
              //   child: const Text('Privacy Policy'),
              // ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "YESAREEM SOLUTIONS PRIVATE LIMITED",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  Row startupMissions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/start_up_india.png'),
            ),
          ),
        ),
        Container(
          width: 300,
          height: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/kerala_startup_mission.png'),
            ),
          ),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/govt_ind_mca.png'),
            ),
          ),
        ),
      ],
    );
  }

  Row signUpSection(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: MediaQuery.of(context).size.width / 4,
          width: MediaQuery.of(context).size.width / 4,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/sign_up_image.png'),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Start  Learning  now",
              style: TextStyle(
                fontSize: 24,
                color: AppColors.primaryColors,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.25,
              ),
            ),
            const SizedBox(height: 75),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name *',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.primaryColors,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.25,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Class *',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.primaryColors,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.25,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 8,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mobile Number *',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.primaryColors,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.25,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 6.45,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'District',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.primaryColors,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.25,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 6.45,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 8,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          gradient: AppUtils.defaultGradient(),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        )
      ],
    );
  }

  Container courses(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.width / 2.5 * 9 / 16,
      color: const Color(0xFFe9e3e2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.chevron_left,
                size: 40,
                color: AppColors.greyColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.width / 4 * 9 / 16,
                        decoration: BoxDecoration(
                          color: AppColors.greyColor,
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: NetworkImage(
                              'data:image/jpeg;base64,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',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              " Maths Wisdom",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColors,
                              ),
                            ),
                            Text(
                              "25 Classes of 2 hours ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColors,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      RatingStars(
                        starColor: Colors.orange,
                        starOffColor: AppColors.greyColor,
                        value: 4.5,
                        starSize: 24,
                        starBuilder: (index, color) => Icon(
                          Icons.star,
                          color: color,
                        ),
                        valueLabelVisibility: false,
                      )
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.width / 4 * 9 / 16,
                        decoration: BoxDecoration(
                          color: AppColors.greyColor,
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: NetworkImage(
                              'data:image/jpeg;base64,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',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              " Maths Wisdom",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColors,
                              ),
                            ),
                            Text(
                              "25 Classes of 2 hours ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColors,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      RatingStars(
                        starColor: Colors.orange,
                        starOffColor: AppColors.greyColor,
                        value: 4.5,
                        starSize: 24,
                        starBuilder: (index, color) => Icon(
                          Icons.star,
                          color: color,
                        ),
                        valueLabelVisibility: false,
                      )
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.width / 4 * 9 / 16,
                        decoration: BoxDecoration(
                          color: AppColors.greyColor,
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ86Eu9Ibp4Dyp3qxWJeKK6x1otv6qe7Zl_YA',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              " Exam Master",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColors.withOpacity(0.5),
                              ),
                            ),
                            Text(
                              " Coming Soon",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColors.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.chevron_right,
                size: 40,
                color: AppColors.greyColor,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Explore more about the courses",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColors,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  SizedBox aboutUs(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.4,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi, Hello",
            style: TextStyle(
              color: AppColors.primaryColors,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Welcome to YESAREEM. where knowledge knows no boundaries and learning is a journey of endless possiblities. We are dedicated to providing a transformative online learning experience that empowers individuals to enhance their skills, explore new horizons, and achieve their fullest potential.\n\nJoin us today and take the first step toward unlocking your potential. Start learning and start shaping your future with us",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Yesareem Team",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  SizedBox backdrop(BuildContext context) {
    return SizedBox(
      height: 700,
      width: 1900,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 525,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/background_img.jpg'),
                opacity: 0.65,
              ),
            ),
          ),
          MediaQuery.of(context).size.width < 800
              ? const SizedBox()
              : Positioned(
                  bottom: MediaQuery.of(context).size.width < 1300
                      ? 50
                      : MediaQuery.of(context).size.width < 100
                          ? 100
                          : 0,
                  right: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: MediaQuery.of(context).size.width / 2.2 * 9 / 16,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/people_img.png'),
                      ),
                    ),
                  ),
                ),
          Positioned(
            top: 175,
            left: MediaQuery.of(context).size.width / 8,
            child: Text.rich(
              TextSpan(
                text: "Let's grow up\n with",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 60,
                ),
                children: [
                  TextSpan(
                    text: '"yesareem"',
                    style: TextStyle(
                      fontSize: 80
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.03,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
              top: 400,
              left: 370,
              child: Container(
                alignment: Alignment.center,
                width: 175,
                height: 50,
                decoration: BoxDecoration(
                  gradient: AppUtils.defaultGradient(),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  "Register Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Container appBarItems(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        gradient: AppUtils.defaultGradient(),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Home',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5,
            ),
          ),
          Text(
            'Class ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5,
            ),
          ),
          Text(
            'Activities',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5,
            ),
          ),
          Text(
            'Admission',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5,
            ),
          ),
          Text(
            'Contact',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget topWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          logoWidget(context),
          searchAndSignInWidget(),
        ],
      ),
    );
  }

  Row searchAndSignInWidget() {
    return Row(
      children: [
        const SizedBox(
          width: 225,
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.primaryColors,
                  width: 2,
                ),
              ),
              hintText: "Search",
              contentPadding: EdgeInsets.all(8),
            ),
            cursorColor: AppColors.primaryColors,
          ),
        ),
        const SizedBox(width: 8),
        Container(
          alignment: Alignment.center,
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            gradient: AppUtils.defaultGradient(),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 16),
        Container(
          alignment: Alignment.center,
          height: 40,
          width: 100,
          decoration: BoxDecoration(
            gradient: AppUtils.defaultGradient(),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text(
            "Sign up",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget logoWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/logo.png',
                  ),
                ),
              ),
            ),
            const Text(
              ' yesareem',
              style: TextStyle(
                fontSize: 20,
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
