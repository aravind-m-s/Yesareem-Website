import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yesareem_website/Constants/app_colors.dart';
import 'package:yesareem_website/Constants/app_utils.dart';

ScrollController controller = ScrollController();

Widget mobileScaffold(BuildContext context) {
  return Scaffold(
    drawer: drawer(),
    appBar: appBar(context),
    body: SingleChildScrollView(
      controller: controller,
      child: Column(
        children: [
          pictureWidget(),
          aboutUs(context),
          courseWidget(context),
          signUpSection(context),
          startupMissions(),
          footer(context),
        ],
      ),
    ),
  );
}

Widget signUpSection(BuildContext context) {
  return Container(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
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
          const SizedBox(height: 24),
          const Column(
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
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
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
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ],
          ),
          const Column(
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
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Column(
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
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
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
      ),
    ),
  );
}

Widget courseWidget(BuildContext context) {
  return Container(
    width: double.infinity,
    color: const Color(0xFFe9e3e2),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AspectRatio(
            aspectRatio: 1.8,
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage(
                    'images/course.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Text(
                "Maths Wisdom",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColors,
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            "Explore more courses >",
            style: TextStyle(
              color: AppColors.primaryColors,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    ),
  );
}

Row startupMissions() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/start_up_india.png'),
          ),
        ),
      ),
      Container(
        width: 200,
        height: 200,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/kerala_startup_mission.png'),
          ),
        ),
      ),
      Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/govt_ind_mca.png'),
          ),
        ),
      ),
    ],
  );
}

Widget aboutUs(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 24.0),
    child: SizedBox(
      width: MediaQuery.of(context).size.width / 1.2,
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
    ),
  );
}

Widget pictureWidget() {
  return Container(
    width: double.infinity,
    height: 400,
    decoration: const BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(
          'images/background_img.jpg',
        ),
      ),
    ),
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text.rich(
          TextSpan(
            text: "Let's grow up\n with",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 45,
            ),
            children: [
              TextSpan(
                text: '"yesareem"',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Container(
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
        )
      ],
    ),
  );
}

Drawer drawer() {
  return const Drawer();
}

AppBar appBar(BuildContext context) {
  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: AppColors.primaryColors,
    ),
    surfaceTintColor: Colors.transparent,
    foregroundColor: Colors.white,
    leadingWidth: 30,
    title: GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
      },
      child: SizedBox(
        width: 150,
        child: Row(
          children: [
            Image.asset(
              'images/logo.png',
              height: 25,
              width: 25,
              color: Colors.white,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                '  yesareem',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    actions: [
      GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          controller.animateTo(controller.position.maxScrollExtent,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: const Text(
            "Sign Up",
            style: TextStyle(color: AppColors.primaryColors),
          ),
        ),
      ),
      const SizedBox(width: 8)
    ],
    elevation: 0,
    backgroundColor: AppColors.primaryColors,
  );
}

Container footer(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: 170,
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
