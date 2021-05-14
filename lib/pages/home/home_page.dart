import 'package:flutter/material.dart';
import 'package:kotxiposix_comunity/constants.dart';
import 'package:kotxiposix_comunity/pages/LiveChannels/live_channels.dart';
import 'package:kotxiposix_comunity/pages/home/widgets/Hero.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              HeroWidget(),
              LiveChannels(),
            ],
          ),
        ),
      ),
    );
  }
}
