import 'package:flutter/material.dart';
import 'package:yesareem_website/Constants/app_colors.dart';

class WebsitePolicies extends StatelessWidget {
  const WebsitePolicies({Key? key});

  @override
  Widget build(BuildContext context) {
    return Title(
      color: Colors.black,
      title: "Website Policies",
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: const EdgeInsets.all(64),
          children: [
            titleWidget('Privacy Policy'),
            titleWidget('Last Updated: September 25, 2023'),
            titleWidget('1. Introduction'),
            contentWidget(
                "Welcome to Yesareem Solutions Private Limited! We value your privacy and are committed to protecting your personal information. This Privacy Policy is designed to help you understand how we collect, use, and safeguard your data when you use our educational application."),
            titleWidget('2. Information We Collect'),
            contentWidget(
                'We collect various types of information to provide and improve our educational services. The types of information we may collect include:'),
            titleWidget('   2.1. Personal Information:'),
            contentWidget(
                '   - Name\n   - Email address\n   - Billing and payment information'),
            titleWidget('   2.2. Usage Information:'),
            contentWidget(
                '    - Course preferences\n    - Learning progress\n    - Interactions with the application'),
            titleWidget('   2.3. Technical Information:'),
            contentWidget(
                '    - Device information (e.g., device type, operating system)\n    - Log data (e.g., IP address, browser type)'),
            titleWidget('3. How We Use Your Information'),
            contentWidget(
                'We use the information we collect for the following purposes:'),
            titleWidget('   3.1. Providing Educational Services:'),
            contentWidget(
                '    - Creating and managing user accounts\n    - Enrolling users in courses\n    - Tracking learning progress'),
            titleWidget('   3.2. Personalization:'),
            contentWidget(
                '    - Tailoring course recommendations\n    - Customizing content based on user preferences'),
            titleWidget('   3.3. Communication:'),
            contentWidget(
                '    - Sending important updates and notifications\n    - Responding to user inquiries and support requests'),
            titleWidget('   3.4. Analytics and Improvement:'),
            contentWidget(
                '    - Analyzing user behavior to improve our services\n    - Troubleshooting technical issues'),
            titleWidget('4. Data Security'),
            contentWidget(
                'We take the security of your data seriously and employ industry-standard security measures to protect it. However, no method of transmission over the internet or electronic storage is completely secure, so we cannot guarantee absolute security.'),
            titleWidget('5. Data Retention'),
            contentWidget(
                'We retain your personal information only for as long as necessary to fulfill the purposes outlined in this Privacy Policy. Once the data is no longer needed, we will securely delete or anonymize it.'),
            titleWidget('6. Third-Party Services'),
            contentWidget(
                'We may use third-party services, such as payment processors, to facilitate transactions and provide certain features. These services have their own privacy policies, and we encourage you to review them.'),
            titleWidget('7. Children\'s Privacy'),
            contentWidget(
                'Our educational services are for children\'s uses. We do not knowingly collect or solicit personal information from minors. If you believe that a child has provided us with their personal information, please contact us, and we will take appropriate steps to remove the data.'),
            titleWidget('8. Your Choices'),
            contentWidget(
                'You can manage your account settings and preferences within the application. You may also contact us to request access, correction, or deletion of your personal information.'),
            titleWidget('9. Changes to this Privacy Policy'),
            contentWidget(
                'We may update this Privacy Policy from time to time to reflect changes in our practices or for other operational, legal, or regulatory reasons. We will notify you of any significant changes and seek your consent if required by applicable laws.'),
            titleWidget('10. Contact Us'),
            contentWidget(
                'If you have any questions, concerns, or requests regarding this Privacy Policy or our data practices, please contact us at www.yeareem@gmail.com.'),
            contentWidget(
                'By using Yesareem Solutions Private Limited, you agree to the terms outlined in this Privacy Policy.'),
            titleWidget('Terms of Service'),
            titleWidget('Last Updated: September 25, 2023'),
            titleWidget('1. Acceptance of Terms'),
            contentWidget(
                "Welcome to Yesareem Solutions Private Limited! By using our educational application, you agree to comply with the terms outlined in this Terms of Service."),
            titleWidget('2. Use of Services'),
            contentWidget(
                'You may use our educational services for lawful purposes only. We reserve the intellectual property rights associated with our services.'),
            titleWidget('3. User Responsibilities'),
            contentWidget(
                'Users are responsible for maintaining the security of their accounts and complying with these terms. Any violation may result in account termination.'),
            titleWidget('4. Termination'),
            contentWidget(
                'Yesareem Solutions Private Limited reserves the right to terminate user accounts for violations of these terms. Users are responsible for their data upon termination.'),
            titleWidget('5. Prohibited Activities'),
            contentWidget(
                'Users are prohibited from engaging in activities that violate laws, infringe on intellectual property rights, or disrupt the integrity of our services.'),
            titleWidget('6. Changes to the Services'),
            contentWidget(
                'We may update or change our services from time to time. We will notify users of significant changes and seek consent if required by applicable laws.'),
            titleWidget('7. User Content'),
            contentWidget(
                'Users may submit content through our services. By doing so, users grant Yesareem Solutions Private Limited the right to use, modify, and distribute that content.'),
            titleWidget('8. Disclaimers'),
            contentWidget(
                'Our services are provided "as is" without warranties. We are not responsible for the accuracy or reliability of user-generated content.'),
            titleWidget('9. Limitation of Liability'),
            contentWidget(
                'Yesareem Solutions Private Limited is not liable for any damages or losses resulting from the use of our services or the inability to use them.'),
            titleWidget('10. Governing Law'),
            contentWidget(
                'These terms are governed by the laws of India. Any disputes will be resolved in accordance with the laws of India.'),
            titleWidget('11. Contact Us'),
            contentWidget(
                'If you have any questions, concerns, or requests regarding these Terms of Service or our services, please contact us at www.yeareem@gmail.com.'),
            contentWidget(
                'By using Yesareem Solutions Private Limited, you agree to comply with the terms outlined in this Terms of Service.'),
          ],
        ),
      ),
    );
  }

  Widget contentWidget(String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: Text(
        content,
        style: const TextStyle(
          fontSize: 18.0,
          color: AppColors.primaryColors,
        ),
      ),
    );
  }

  Widget titleWidget(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w600,
          color: AppColors.primaryColors,
        ),
      ),
    );
  }
}
