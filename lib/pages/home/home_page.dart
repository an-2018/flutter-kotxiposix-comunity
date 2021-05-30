import 'package:flutter/material.dart';
import 'package:kotxiposix_comunity/components/ProviderCard.dart';
import 'package:kotxiposix_comunity/constants.dart';
import 'package:kotxiposix_comunity/pages/LiveChannels/live_channels.dart';
import 'package:kotxiposix_comunity/pages/home/widgets/Hero.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.20),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//            HeroWidget(),
              ProviderCardWidget(
                title: "Hotel Perola",
                price: "10 204 CVE",
                porviderImage: "images/perola.png",
              ),
              LiveChannels(),
            ],
          ),
        ),
      ),
    );
  }
}
