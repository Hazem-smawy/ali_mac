import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/widget/drawer/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:emad_app/screen/bottom_nav_screen/bottom_nav_screen.dart';

class MainPageScreen extends StatefulWidget {
  const MainPageScreen({super.key});

  @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  late double xOffset;
  late double yOffset;
  late double scaleFactor;
  bool isDragging = false;
  bool isDrawerOpen = false;

  @override
  void initState() {
    super.initState();
    closeDrawer();
  }

  void openDrawer() => setState(() {
        xOffset = -100;
        yOffset = 170;
        scaleFactor = 0.6;
        isDragging = true;
        isDrawerOpen = true;
      });

  void closeDrawer() => setState(() {
        xOffset = 0;
        yOffset = 0;
        scaleFactor = 1;
        isDragging = false;
        isDrawerOpen = false;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.blueColor,
      body: Stack(
        children: [
          buildDrawer(),
          buildPage(xOffset, yOffset, scaleFactor),
        ],
      ),
    );
  }

  Widget buildDrawer() => const SafeArea(child: DrawerWidget());
  Widget buildPage(double xOffset, double yOffset, double scaleFactor) {
    return GestureDetector(
      onTap: closeDrawer,
      onHorizontalDragStart: (details) => isDragging = true,
      onHorizontalDragUpdate: (details) {
        if (!isDragging) return;
        const delta = 1;
        if (details.delta.dx < delta) {
          openDrawer();
        } else if (details.delta.dx > -delta) {
          closeDrawer();
        }
        isDragging = false;
      },
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor),
          child: AbsorbPointer(
              absorbing: isDrawerOpen,
              child: BottomNavScreen(openDrawer: openDrawer))),
    );
  }
}
