import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerItems {
  static final home =
      DrawerItem(id: 0, title: 'سيرة الشيخ', icon: FontAwesomeIcons.idCard);
  static final video =
      DrawerItem(id: 1, title: 'المرئيات', icon: FontAwesomeIcons.video);
  static final audio =
      DrawerItem(id: 2, title: 'الصوتيات', icon: FontAwesomeIcons.headphones);
  static final fatawa =
      DrawerItem(id: 3, title: 'الفتاوى', icon: FontAwesomeIcons.noteSticky);
  static final books =
      DrawerItem(id: 4, title: 'الكتب والمؤلفات', icon: FontAwesomeIcons.book);
  static final links =
      DrawerItem(id: 5, title: 'روابط تهمك', icon: FontAwesomeIcons.link);
  static final cantactUs =
      DrawerItem(id: 6, title: 'اتصل بنا', icon: FontAwesomeIcons.phone);

  static final List<DrawerItem> all = [
    home,
    video,
    audio,
    fatawa,
    books,
    links,
    cantactUs,
  ];
}

class DrawerItem {
  final String title;
  final IconData icon;
  final int? id;

  DrawerItem({required this.title, required this.icon, required this.id});
}
