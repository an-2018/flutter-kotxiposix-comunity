import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kotxiposix_comunity/constants.dart';
import 'package:kotxiposix_comunity/models/Album.dart';
import 'package:kotxiposix_comunity/pages/home/widgets/ButtonWidget.dart';
import 'package:kotxiposix_comunity/services/sample_json_api.dart';

class LiveChannels extends StatefulWidget {
  @override
  _LiveChannelsState createState() => _LiveChannelsState();
}

class _LiveChannelsState extends State<LiveChannels> {
  Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = AlbumApi().fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: defaultMargin),
            height: 30,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
          ),
          CardWidget(
            imageUri:
                "https://cdn.vox-cdn.com/thumbor/snH4LjjNq_uyiyxi3ISEqi6WcDg=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22182760/patch_10_25_banner.jpg",
            title: "2020 World Champing Warzone",
            text1: "Random Lorem Ipsum dolor sit",
            text2: "Normla space around the world of change",
          ),
          FutureBuilder<Album>(
              future: futureAlbum,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView(
                    children: [
                      for (var album in List.of({snapshot.data}))
                        Text("${album.title}")
                    ],
                  );
                } else if (snapshot.hasError) {
                  print("${futureAlbum} error");
                  return Text("${snapshot.error}");
                }

                return CircularProgressIndicator();
              }),
          Container(
            height: 300,
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                CardWidget(
                  imageUri:
                      "https://cdn.vox-cdn.com/thumbor/snH4LjjNq_uyiyxi3ISEqi6WcDg=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22182760/patch_10_25_banner.jpg",
                  title: "2020 World Champing Warzone",
                ),
                CardWidget(
                  imageUri:
                      "https://cdn.vox-cdn.com/thumbor/snH4LjjNq_uyiyxi3ISEqi6WcDg=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22182760/patch_10_25_banner.jpg",
                  title: "2020 World Champing Warzone",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String imageUri, title, text1, text2;

  const CardWidget({Key key, this.imageUri, this.title, this.text1, this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(imageUri),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text(title ?? ""),
            ),
            ListTile(
              title: Container(
                alignment: Alignment.centerLeft,
                width: double.maxFinite,
                height: Theme.of(context).textTheme.bodyText1.fontSize,
                child: Icon(Icons.gamepad),
              ),
            ),
            ListTile(
              title: Container(
                alignment: Alignment.centerLeft,
                width: double.maxFinite,
                height: Theme.of(context).textTheme.bodyText1.fontSize,
                child: Icon(Icons.travel_explore),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> getCategoryList() {
  return [
    Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.amber,
          child: Center(child: Text("name")),
        ))
  ];
}
