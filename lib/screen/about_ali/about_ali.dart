import 'package:emad_app/constant/responsve.dart';
import 'package:emad_app/widget/app_bar/app_bar.dart';
import 'package:flutter/material.dart';

class AboutAliScreen extends StatelessWidget {
  const AboutAliScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isMobile ? null : myAppBar,
      body: const Text('hello world'),
    );
  }
}
