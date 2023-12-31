import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:yesareem_website/Screens/contact_us/contact_us.dart';
import 'package:yesareem_website/Screens/home/home.dart';
import 'package:yesareem_website/Screens/order_summary/order_summary.dart';
import 'package:yesareem_website/Screens/privacy_policy/privacy_policy.dart';
import 'package:yesareem_website/Screens/refund_and_cancellation/refund_and_cancellation.dart';
import 'package:yesareem_website/Screens/terms%20and%20conditions/terms_and_conditions.dart';
import 'package:yesareem_website/Screens/website_policies/website_policies.dart';

PathUrlStrategy path = PathUrlStrategy();

void main() {
  setUrlStrategy(path);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.outfitTextTheme(Theme.of(context).textTheme),
        fontFamily: 'Outfit',
        scaffoldBackgroundColor: Colors.grey.shade200,
      ),
      initialRoute: path.getPath(),
      title: "Yesareem",
      routes: {
        '/': (context) => const Home(),
        '/contact-us': (context) => const ContactUs(),
        '/terms-and-conditions': (context) => const TermsAndConditions(),
        '/privacy-policy': (context) => const PrivacyPolicy(),
        '/shipping-and-refund': (context) => const RefundAndCancellation(),
        '/order-summary': (context) => const OrderSummaryPage(),
        '/website-policies': (context) => const WebsitePolicies()
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (_) => const Home());
        } else if (settings.name == '/terms-and-conditions') {
          return MaterialPageRoute(builder: (_) => const TermsAndConditions());
        } else if (settings.name == '/privacy-policy') {
          return MaterialPageRoute(builder: (_) => const PrivacyPolicy());
        } else if (settings.name == '/shipping-and-refund') {
          return MaterialPageRoute(
              builder: (_) => const RefundAndCancellation());
        } else if (settings.name == '/order-summary') {
          return MaterialPageRoute(builder: (_) => const OrderSummaryPage());
        } else if (settings.name == "contact-us") {
          return MaterialPageRoute(builder: (_) => const ContactUs());
        }

        return MaterialPageRoute(
          builder: (_) => const Home(),
        ); // you can do this in `onUnknownRoute` too
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) => const Home(),
        );
      },
    );
  }
}
