import 'package:flutter/material.dart';

class ProviderCardWidget extends StatelessWidget {
  final String title;
  final String price;
  final String porviderImage;

  ProviderCardWidget(
      {this.title = "", this.price = "", this.porviderImage = ""});

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = TextStyle(fontFamily: 'Georgia', fontSize: 25);

    final titleText = (String title) {
      return Container(
        padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
        child: Text(title, style: titleTextStyle),
      );
    };

    final priceField = titleText(price);
    final titleField = titleText(title);

    final stars = Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber[500],
        ),
      ],
    );

    final ratings = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '4.3',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              fontSize: 20,
              letterSpacing: 0.5,
            ),
          ),
          stars,
          Text('(100)')
        ],
      ),
    );

    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      textStyle: TextStyle(fontSize: 16),
    );

    final button = ElevatedButton(
      style: buttonStyle,
      onPressed: () => {},
      child: const Text('Saber mais'),
    );

    final espcList = Container(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Icon(Icons.hotel), Text("Hotel 4 estrelas")],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Icon(Icons.coffee), Text("Pequeno-almoco")],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Icon(Icons.wifi), Text("Wifi gratuito")],
          ),
        ],
      ),
    );

    final rightColumn = Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                titleField,
                ratings,
                Spacer(),
                espcList,
              ],
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Expanded(flex: 5, child: priceField),
            Expanded(child: button)
          ])
        ],
      ),
    );

    final mainImage = Expanded(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(porviderImage), fit: BoxFit.cover),
        ),
      ),
    );

    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
        height: 300,
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mainImage,
              Container(
                child: Expanded(flex: 2, child: rightColumn),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
