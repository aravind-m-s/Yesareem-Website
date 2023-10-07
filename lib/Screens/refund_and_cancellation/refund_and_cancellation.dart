import 'package:flutter/material.dart';
import 'package:yesareem_website/Constants/app_colors.dart';

class RefundAndCancellation extends StatelessWidget {
  const RefundAndCancellation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(64),
        children: [
          titleWidget('Shipping, Delivery and Refund Policy'),
          contentWidget(
              'At Yesareem Solutions Private Limited, we aim to provide you with a convenient and efficient experience when it comes to accessing your digital educational products. Please take a moment to review our shipping and delivery policy to understand how the process works:'),
          titleWidget('1. Digital Delivery:'),
          contentWidget(
              'All products offered on our platform are digital in nature. This means that there are no physical items to be shipped. Instead, you will receive access to your purchased educational materials electronically.'),
          titleWidget('2. Delivery Timeframe:'),
          contentWidget(
              'Upon successful completion of your purchase, you can expect to receive access to your digital products within up to 3 days. However, in most cases, the delivery is instantaneous, and you will gain immediate access.'),
          titleWidget('3. Notification and Access:'),
          contentWidget(
              'Once your digital products are ready for access, you will receive a notification via the email address associated with your account. This email will contain instructions on how to access and download your educational materials.'),
          titleWidget('4. Contact Information:'),
          contentWidget(
              'In the rare event that your digital products are not available within the stipulated timeframe or if you encounter any issues with the delivery process, please do not hesitate to contact our customer support team. You can reach us at www.yesareem@gmail.com or by visiting our Contact Us page on our website.'),
          titleWidget('5. Refunds:'),
          contentWidget(
              'As our products are digital and accessible immediately upon purchase, we do not offer refunds once access has been granted. Please make sure to review our product descriptions and ensure that the product meets your needs before making a purchase.'),
          titleWidget('6. Technical Support:'),
          contentWidget(
              'If you encounter any technical difficulties while accessing or using our educational materials, our dedicated technical support team is available to assist you. You can contact them at www.yesareem@gmail.com.'),
          contentWidget(
              'We appreciate your trust in Yesareem Solutions Private Limited for your educational needs. We are committed to delivering high-quality educational content and are here to assist you with any questions or concerns you may have regarding your purchase.'),
        ],
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
