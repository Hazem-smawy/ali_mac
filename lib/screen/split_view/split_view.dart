import 'package:flutter/material.dart';

class SplitView extends StatelessWidget {
  const SplitView({
    Key? key,
    // menu and content are now configurable
    required this.menu,
    required this.content,
    // these values are now configurable with sensible default values
    this.breakpoint = 600,
    this.menuWidth = 250,
  }) : super(key: key);
  final Widget menu;
  final Widget content;
  final double breakpoint;
  final double menuWidth;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= breakpoint) {
      // widescreen: menu on the left, content on the right
      return Row(
        children: [
          Expanded(child: Scaffold(body: content)),
          SizedBox(
            width: menuWidth,
            child: menu,
          ),
          Container(width: 0.5, color: Colors.black),
        ],
      );
    } else {
      // narrow screen: show content, menu inside drawer
      return Scaffold(
        body: content,
        drawer: SizedBox(
          width: menuWidth,
          child: Drawer(
            child: menu,
          ),
        ),
      );
    }
  }
}
