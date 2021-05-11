import 'package:flutter/material.dart';
import 'package:kotxiposix_comunity/constants.dart';
import 'package:kotxiposix_comunity/pages/home/widgets/Hero.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeroWidget(),
        ],
      ),
    );
  }
}
