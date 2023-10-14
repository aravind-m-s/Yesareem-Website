import 'package:flutter/material.dart';
import 'package:yesareem_website/Constants/app_colors.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
      color: Colors.black,
      title: "Terms and Conditions",
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: const EdgeInsets.all(64),
          children: [
            titleWidget(
                'Terms and Conditions for Yesareem Solutions Private Limited'),
            titleWidget('Last Updated: September 25, 2023'),
            contentWidget(
                "Welcome to Yesareem Solutions Private Limited's (\"the App\"). These Terms and Conditions (\"Terms\") govern your use of the App and the services provided through it. By using the App, you agree to comply with and be bound by these Terms. If you do not agree to these Terms, please do not use the App."),
            titleWidget('1. Acceptance of Terms'),
            contentWidget(
                'By using the App, you confirm that you are at least 18 years old or have the consent of a parent or guardian. If you are using the App on behalf of an organization, you represent that you have the authority to bind that organization and agree to these Terms on its behalf.'),
            titleWidget('2. Registration'),
            contentWidget(
                '2.1. To access certain features of the App, you may need to create an account. You agree to provide accurate and complete information during the registration process and to update such information to keep it current.\n\n2.2. You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account.'),
            titleWidget('3. Courses and Content'),
            contentWidget(
                '3.1. The App offers various online courses and educational content for purchase. These courses and content may be provided by us or third-party instructors.\n\n3.2. Course availability and pricing are subject to change without notice.'),
            titleWidget('4. Payments and Refunds'),
            contentWidget(
                '4.1. When you purchase a course or content through the App, you agree to pay the specified fees. Payment methods may vary and are subject to change.\n\n4.2. Refund policies are outlined in a separate Refund Policy available on the App. Please review this policy before making a purchase.'),
            titleWidget('5. User Content'),
            contentWidget(
                'You may have the opportunity to submit content, such as comments or reviews, to the App. You retain ownership of your content, but by submitting it, you grant us a worldwide, royalty-free, non-exclusive license to use, reproduce, modify, publish, and distribute your content.'),
            titleWidget('6. Intellectual Property'),
            contentWidget(
                'All content on the App, including text, graphics, logos, images, and course materials, is protected by copyright and other intellectual property laws. You may not use, reproduce, or distribute this content without permission.'),
            titleWidget('7. Termination'),
            contentWidget(
                'We reserve the right to terminate or suspend your account and access to the App at our discretion, without prior notice, for any reason, including a breach of these Terms.'),
            titleWidget('8. Disclaimer of Warranties'),
            contentWidget(
                'The App and its content are provided on an "as-is" basis. We make no warranties, express or implied, regarding the accuracy, completeness, or fitness for a particular purpose of the content on the App.'),
            titleWidget('9. Limitation of Liability'),
            contentWidget(
                ' In no event shall we be liable for any indirect, incidental, special, or consequential damages arising out of or in connection with your use of the App.'),
            titleWidget('10. Governing Law and Jurisdiction'),
            contentWidget(
                ' These Terms shall be governed by and construed in accordance with the laws of Indian Jurisdition. Any disputes arising from these Terms or your use of the App shall be subject to the exclusive jurisdiction of the courts in Indian Jurisdition.'),
            titleWidget('11. Changes to Terms'),
            contentWidget(
                'We may revise these Terms from time to time. The most current version will be available on the App, and your continued use of the App after any changes signify your agreement to the new terms.'),
            titleWidget('12. Contact Us'),
            contentWidget(
                '12.1. If you have any questions or concerns about these Terms, please contact us at www.yesareem@gmail.com.'),
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
