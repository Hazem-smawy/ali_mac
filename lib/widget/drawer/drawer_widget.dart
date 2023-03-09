import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/model/drawer_item.dart';
import 'package:emad_app/screen/books/books_screen.dart';
import 'package:emad_app/screen/fatawa_screen/fatawa_screen.dart';
import 'package:emad_app/screen/series/series_screan.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 7),
          buildDrawerItems(context),
        ],
      ),
    );
  }

  Widget buildDrawerItems(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: DrawerItems.all
            .map((e) => ListTile(
                  onTap: () {
                    if (e.id == 1) {
                      Get.to(() => const SeriesScreen());
                    }
                    if (e.id == 2) {
                      Get.to(() => const SeriesScreen());
                    }
                    if (e.id == 3) {
                      Get.to(const FatawaScreen());
                    }
                    if (e.id == 4) {
                      Get.to(const BooksScreen());
                    }
                  },
                  trailing: FaIcon(
                    e.icon,
                    color: MyColors.lightGreenColor,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        e.title,
                        style: const TextStyle(
                          fontFamily: 'Cairo',
                          color: MyColors.bg,
                        ),
                      ),
                    ],
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                ))
            .toList(),
      );
}
