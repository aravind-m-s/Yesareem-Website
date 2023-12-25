import 'package:flutter/material.dart';

class LayoutBuilderScaffold extends StatefulWidget {
  const LayoutBuilderScaffold(
      {super.key,
      required this.mobileWidget,
      required this.tabWIdget,
      required this.webWidget});

  final Widget mobileWidget;
  final Widget tabWIdget;
  final Widget webWidget;

  @override
  State<LayoutBuilderScaffold> createState() => _LayoutBuilderScaffoldState();
}

class _LayoutBuilderScaffoldState extends State<LayoutBuilderScaffold> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 640) {
          return widget.mobileWidget;
        } else if (constraints.maxWidth < 1000) {
          return widget.tabWIdget;
        } else {
          return widget.webWidget;
        }
      },
    );
  }
}
