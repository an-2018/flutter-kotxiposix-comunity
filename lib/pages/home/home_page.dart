import 'package:flutter/material.dart';
import 'package:kotxiposix_comunity/constants.dart';
import 'package:kotxiposix_comunity/pages/LiveChannels/live_channels.dart';
import 'package:kotxiposix_comunity/pages/home/widgets/Hero.dart';

class HomePage extends StatelessWidget {
  
  String _name;

  String get name {
    return this._name;
  }

  set name(String name) {
    this._name = name;
  }

  HomePage([Key key, this._name]) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
//            HeroWidget(),
            LiveChannels(),
          ],
        ),
      ),
    );
  }
}

var name = HomePage()._name;