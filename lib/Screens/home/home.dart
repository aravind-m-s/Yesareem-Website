import 'package:flutter/material.dart';
import 'package:yesareem_website/Screens/home/mobile_view.dart';
import 'package:yesareem_website/Screens/home/web_view.dart';
import 'package:yesareem_website/Screens/home/tab_view.dart';
import 'package:yesareem_website/Screens/layout_builder/layout_builder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilderScaffold(
      mobileWidget: mobileScaffold(context),
      tabWIdget: tabScaffold(context),
      webWidget: websiteScaffold(context),
    );
  }
}
