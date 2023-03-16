import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/responsve.dart';
import 'package:emad_app/widget/drawer/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:emad_app/screen/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:get/get.dart';

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
    if (Responsive.isMobile) {
      closeDrawer();
    } else {
      openDrawer();
    }
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
    return SafeArea(
      bottom: Responsive.isMobile ? false : true,
      top: Responsive.isMobile ? false : true,
      left: Responsive.isMobile ? false : true,
      right: Responsive.isMobile ? false : true,
      child: Scaffold(
          backgroundColor: MyColors.blueColor,
          body: Responsive.isMobile
              ? Stack(
                  children: [
                    buildDrawer(),
                    buildPage(xOffset, yOffset, scaleFactor),
                  ],
                )
              // : SplitView(menu: buildDrawer(), content: buildPage(0, 0, 1))
              : SizedBox(
                  child: SizedBox(
                    //color: Colors.red,
                    width: Get.width,
                    child: Row(
                      children: [
                        Expanded(child: buildPage(0, 0, 1)),
                        Container(
                          constraints:
                              BoxConstraints(maxWidth: Get.width * 0.3),
                          child: buildDrawer(),
                        ),
                      ],
                    ),
                  ),
                )),
    );
  }

  Widget buildDrawer() => const SafeArea(child: DrawerWidget());
  Widget buildPage(double xOffset, double yOffset, double scaleFactor) {
    return GestureDetector(
      onTap: closeDrawer,
      onHorizontalDragStart: (details) => isDragging = true,
      onHorizontalDragUpdate: (details) {
        if (!isDragging || !Responsive.isMobile) return;
        const delta = -3;
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
          absorbing: Responsive.isMobile ? isDrawerOpen : false,
          child: BottomNavScreen(openDrawer: openDrawer),
        ),
      ),
    );
  }
}
