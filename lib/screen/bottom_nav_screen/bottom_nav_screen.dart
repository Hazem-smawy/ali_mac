import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/model/drawer_item.dart';
import 'package:emad_app/screen/home/home.dart';
import 'package:emad_app/screen/notification_screen.dart/notification_screen.dart';
import 'package:emad_app/screen/search_screen/search_screen.dart';
import 'package:emad_app/screen/video_sup_sereis/video_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BottomNavScreen extends StatefulWidget {
  final VoidCallback openDrawer;
  const BottomNavScreen({super.key, required this.openDrawer});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List<DrawerItem> bottomNavButtons = [
    DrawerItem(id: 3, title: 'اتصل بنا', icon: FontAwesomeIcons.phone),
    DrawerItem(id: 2, title: 'عن الشيخ', icon: FontAwesomeIcons.book),
    DrawerItem(id: 1, title: 'البحث', icon: FontAwesomeIcons.magnifyingGlass),
    DrawerItem(id: 0, title: 'الرئيسية', icon: FontAwesomeIcons.house),
  ];

  int index = 0;

  List pages = [
    const MyHomeScreen(),
    const SearchScreen(),
    const NotificationScreen(),
    const VideoDetailsScreen(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.bars,
                color: MyColors.lessBlackColor,
              ),
              onPressed: widget.openDrawer,
            ),
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('assets/images/top-logo.png'))),
                  child: null,
                ),
              )
            ],
          ),
          leading: GestureDetector(
            onTap: () => Get.to(() => const NotificationScreen()),
            child: const Center(
              child: FaIcon(
                FontAwesomeIcons.bell,
                color: MyColors.lessBlackColor,
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            pages[index],
            //const SizedBox(height: 75),

            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  height: 75,
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, bottom: 10, top: 5),
                  color: MyColors.bg,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: bottomNavButtons
                        .map((btn) => GestureDetector(
                              onTap: () {
                                if (btn.id != null) {
                                  setState(() {
                                    index = btn.id!;
                                  });
                                }
                              },
                              child: Container(
                                padding: const EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                    color: index == btn.id
                                        ? MyColors.lightGreenColor
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    if (index == btn.id)
                                      Text(
                                        btn.title,
                                        style: const TextStyle(
                                          fontFamily: 'Cairo',
                                          fontSize: 12,
                                          color: MyColors.bg,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    if (index == btn.id)
                                      const SizedBox(width: 10),
                                    FaIcon(
                                      btn.icon,
                                      size: 19,
                                      color: index == btn.id
                                          ? MyColors.bg
                                          : MyColors.lessBlackColor,
                                    )
                                  ],
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
