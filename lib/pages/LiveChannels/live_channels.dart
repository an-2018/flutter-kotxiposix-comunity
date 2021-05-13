import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kotxiposix_comunity/constants.dart';
import 'package:kotxiposix_comunity/pages/home/widgets/ButtonWidget.dart';

class LiveChannels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Live Channels", style: Theme.of(context).textTheme.headline2),
          Padding(
            padding: EdgeInsets.all(defaultPadding),
          ),
          Container(
            child: Card(
              child: Column(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      image: DecorationImage(
                        image: Image.asset("hero-image.png"),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text("2020 World Champing Warzone"),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 300,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                      color: Colors.amber,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "2020 World Champs Gaming Warzone",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                      color: Colors.blueAccent,
                      child: Row(
                        children: [
                          Container(
                            width: 10,
                            decoration: BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                          ),
                          Column(
                            children: [
                              Text("User Tam Tran"),
                              Icon(Icons.check)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                      color: Colors.redAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ButtonWidget(
                                color: Colors.blueAccent,
                                text: "bt",
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              ButtonWidget(
                                color: Colors.blueAccent,
                                text: "bt",
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
