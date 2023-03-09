import 'package:emad_app/screen/books/book_item_widget.dart';
import 'package:emad_app/widget/app_bar/app_bar.dart';
import 'package:flutter/material.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1 / 2.1,
        ),
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
          bottom: 30,
        ),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return const BookItemWidget();
        },
      ),
    );
  }
}
