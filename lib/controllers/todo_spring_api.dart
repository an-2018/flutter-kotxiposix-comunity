import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Book bookFromJson(String str) => Book.fromJson(json.decode(str));

String bookToJson(Book data) => json.encode(data.toJson());

class Book {
  String context;
  String id;
  String type;
  List<HydraMember> hydraMember;

  Book({
    this.context,
    this.id,
    this.type,
    this.hydraMember,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        context: json["@context"],
        id: json["@id"],
        type: json["@type"],
        hydraMember: List<HydraMember>.from(
            json["hydra:member"].map((x) => HydraMember.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "@context": context,
        "@id": id,
        "@type": type,
        "hydra:member": List<dynamic>.from(hydraMember.map((x) => x.toJson())),
      };
}

class HydraMember {
  String id;
  String type;
  int hydraMemberId;
  String isbn;
  String title;
  String author;
  DateTime pubLicationDate;
  bool active;
  dynamic owner;

  HydraMember({
    this.id,
    this.type,
    this.hydraMemberId,
    this.isbn,
    this.title,
    this.author,
    this.pubLicationDate,
    this.active,
    this.owner,
  });

  factory HydraMember.fromJson(Map<String, dynamic> json) => HydraMember(
        id: json["@id"],
        type: json["@type"],
        hydraMemberId: json["id"],
        isbn: json["isbn"],
        title: json["title"],
        author: json["author"],
        pubLicationDate: DateTime.parse(json["pubLicationDate"]),
        active: json["active"],
        owner: json["owner"],
      );

  Map<String, dynamic> toJson() => {
        "@id": id,
        "@type": type,
        "id": hydraMemberId,
        "isbn": isbn,
        "title": title,
        "author": author,
        "pubLicationDate": pubLicationDate.toIso8601String(),
        "active": active,
        "owner": owner,
      };
}

class BookHttpService {
  Future<Book> listBooks() async {
    //final response = await http.get('http://192.168.1.13:8000/api/books');
    String jsonString = '''
    {
 "@context": "api/contexts/Book",
 "@id":"api/books",
 "@type":"hydra:Collection",
 "hydra:member":[
 {
   "@id": "api/books/2",
   "@type": "Book",
   "id":2,
   "isbn":"8545",
   "title":"test body",
   "author":"abc",
   "pubLicationDate":"2020-01-14T16:29:16+01:00",
   "active":false,
   "owner":null
 },
 {
   "@id": "api/books/2",
   "@type": "Book",
   "id":1,
   "isbn":"1234",
   "title":"test body 2",
   "author":"def",
   "pubLicationDate":"2020-01-14T16:29:16+01:00",
   "active":false,
   "owner":null
 }
 ]
}
    ''';

    final response = http.Response(jsonString, 200);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return bookFromJson(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load books');
    }
  }
}

class BookList extends StatefulWidget {
  @override
  _BookListState createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  Future _future;
  final BookHttpService bookHttpService = BookHttpService();

  @override
  void initState() {
    _future = bookHttpService.listBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: Container(
        child: FutureBuilder<Book>(
          future: _future,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: snapshot.data.hydraMember.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 50,
                      child: Center(
                          child:
                              Text('${snapshot.data.hydraMember[index].title}')),
                    );
                  });
            } else if (snapshot.hasError) {
              return Text("${snapshot.error.toString()}");
            }

            // By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BookList(),
    );
  }
}