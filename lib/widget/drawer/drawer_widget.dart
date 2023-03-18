
import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/responsve.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:emad_app/model/drawer_item.dart';
import 'package:emad_app/screen/about_ali/about_ali.dart';
import 'package:emad_app/screen/books/books_screen.dart';
import 'package:emad_app/screen/contact/contact_screen.dart';
import 'package:emad_app/screen/fatawa_screen/fatawa_screen.dart';
import 'package:emad_app/screen/main_page/main_page_screen.dart';
import 'package:emad_app/screen/search_screen/search_screen.dart';
import 'package:emad_app/screen/series/series_screan.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          SizedBox(
            height: !Responsive.isMobile ? Get.height / 10 : Get.height / 5,
          ),
          buildDrawerItems(context),
        ],
      ),
    );
  }

  Widget buildDrawerItems(BuildContext context) => Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: DrawerItems.all.map(
        (e) {
          if ((e.id == 0 || e.id == 1 || e.id == 2 || e.id == 8) &&
              Responsive.isMobile) {
            return const SizedBox();
          }

          return ListTile(
            onTap: () {
              if (e.id == 0) {
                Get.offAll(() => const MainPageScreen());
              }

              if (e.id == 1) {
                Get.to(const SearchScreen());
              }
              if (!Responsive.isMobile) if (e.id == 2) {
                Get.to(() => const AboutAliScreen());
              }
              if (e.id == 3) {
                Get.to(()=>const SeriesScreen());
              }
              if (e.id == 4) {
                Get.to(()=>const SeriesScreen());
              }
              if (e.id == 5) {
                Get.to(()=>const FatawaScreen());
              }
              if (e.id == 6) {
                Get.to(()=>const BooksScreen());
              }
              if (e.id == 7) {
                Get.to(()=>const BooksScreen());
              }
              if (e.id == 8) {
                Get.to(()=>const ContactScreen());
              }
              if (e.id == 9) {
                Get.to(()=>const ContactScreen());
              }
            },
            trailing: FaIcon(
              e.icon,
              color: MyColors.lightGreenColor,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(e.title,
                    style: myTextStyles.title2.copyWith(
                      fontWeight: FontWeight.normal,
                      color: MyColors.bg,
                    )),
              ],
            ),
            contentPadding: EdgeInsets.symmetric(
                horizontal: 24, vertical: !Responsive.isMobile ? 8 : 4),
          );
        },
      ).toList());
}
