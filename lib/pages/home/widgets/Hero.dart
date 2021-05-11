import 'package:flutter/material.dart';
import 'package:kotxiposix_comunity/constants.dart';

import 'ButtonWidget.dart';

class HeroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/hero-image.png"),
          fit: BoxFit.cover,
        ),
        color: Colors.blue,
      ),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(),
              flex: 7,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: ButtonWidget(
                text: "Live",
                color: Colors.orangeAccent,
                icon: Icon(Icons.wifi, color: Colors.white),
              ),
            ),
            Container(
              child: Text(
                heroText,
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: ButtonWidget(text: "Watch", color: Colors.purpleAccent),
            ),
            Container(
              height: 128,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(defaultPadding),
                children: [
                  for (var i in new List<int>.generate(9, (index) => null))
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      height: 128,
                      width: 128,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
