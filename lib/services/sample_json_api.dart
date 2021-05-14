import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kotxiposix_comunity/models/Album.dart';

class AlbumApi {
  final String providerUrl = "jsonplaceholder.typicode.com";

  Future<http.Response> fetchAlbumFromPath(String path) {
    return http.get(Uri.https(providerUrl, path));
  }

  Future<List<Album>> fetchAlbum() async {
    final response = await http.get(Uri.https(providerUrl, '/albums/1/photos'));
    var albumList = <Album>[];

    if (response.statusCode == 200) {
      albumList = jsonDecode(response.body).forEach((album) {
        albumList.add(Album.fromJson(album));
      });

      return albumList;
    } else {
      throw Exception("Failed to load album");
    }
  }
}
