import 'package:flutter/material.dart';
import 'package:yesareem_website/Constants/app_colors.dart'; // replace with your actual path

class WebsitePolicies extends StatelessWidget {
  const WebsitePolicies({super.key});

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
                "Thank you for using YESAREEM SOLUTIONS PRIVATE LIMITED. This Privacy Policy explains how we collect, use, and protect your personal information."),
            titleWidget('2. Information Collected'),
            contentWidget(
                'We may collect personal information such as your name, email, and address through forms and cookies.'),
            titleWidget('3. Use of Information'),
            contentWidget(
                'We use this information to provide and improve our services. We do not share your information with third parties.'),
            titleWidget('4. User Rights'),
            contentWidget(
                'You can access, update, or delete your information. You may opt-out of certain data collection.'),
            titleWidget('Terms of Service'),
            titleWidget('Last Updated: September 25, 2023'),
            titleWidget('1. Acceptance of Terms'),
            contentWidget(
                "By using YESAREEM SOLUTIONS PRIVATE LIMITED, you agree to comply with these terms."),
            titleWidget('2. Use of Services'),
            contentWidget(
                'You may use our services for lawful purposes only. We reserve intellectual property rights.'),
            titleWidget('3. Termination'),
            contentWidget(
                'We can terminate accounts for violation. Users are responsible for their data upon termination.'),
            titleWidget('Cookie Policy'),
            titleWidget('1. Types of Cookies'),
            contentWidget(
                'We use session and persistent cookies for various purposes.'),
            titleWidget('2. Cookie Management'),
            contentWidget(
                'You can control or delete cookies. By using our site, you consent to our use of cookies.'),
            titleWidget('Security Policy'),
            titleWidget('1. Data Security'),
            contentWidget('We implement measures to protect your data.'),
            titleWidget('2. User Responsibilities'),
            contentWidget(
                'Users must safeguard login credentials and report security concerns.'),
            titleWidget('Refund and Return Policy'),
            titleWidget('1. Eligibility'),
            contentWidget(
                'Products may be eligible for return under certain conditions.'),
            titleWidget('2. Refund Process'),
            contentWidget('Refunds are processed within 7 days.'),
            titleWidget('3. Exceptions'),
            contentWidget('Some products may be exempt from returns.'),
            titleWidget('Shipping Policy'),
            titleWidget('1. Shipping Options'),
            contentWidget('We offer various shipping methods.'),
            titleWidget('2. Delivery Times'),
            contentWidget(
                'Estimated delivery times are provided for each method.'),
            titleWidget('3. Costs'),
            contentWidget('Shipping fees and taxes may apply.'),
            titleWidget('Cancellation Policy'),
            titleWidget('1. Order Cancellation'),
            contentWidget('Orders can be canceled under certain conditions.'),
            titleWidget('2. Fees'),
            contentWidget('Cancellation fees may apply.'),
            titleWidget('Community Guidelines'),
            titleWidget('1. Code of Conduct'),
            contentWidget('Users must adhere to our code of conduct.'),
            titleWidget('2. Consequences'),
            contentWidget('Violations may result in penalties.'),
            titleWidget('3. Moderation'),
            contentWidget('Content may be moderated for compliance.'),
            titleWidget('Dispute Resolution'),
            titleWidget('1. Process'),
            contentWidget('Steps are in place for dispute resolution.'),
            titleWidget('2. Mediation/Arbitration'),
            contentWidget(
                'Disputes may be resolved through mediation or arbitration.'),
            titleWidget('3. Jurisdiction'),
            contentWidget('Applicable laws and jurisdiction are outlined.'),
            titleWidget('Contact Information'),
            titleWidget('1. Customer Support'),
            contentWidget(
                'For inquiries, contact yesareemsolutions@gmail.com.'),
            titleWidget('2. Response Time'),
            contentWidget('We aim to respond within 7 business days.'),
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
          color: AppColors.primaryColors, // Replace with your actual color
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
          color: AppColors.primaryColors, // Replace with your actual color
        ),
      ),
    );
  }
}
