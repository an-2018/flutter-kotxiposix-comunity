class Album {
  final int albumId;
  final int id;
  final String title;
  final String imageUrl;
  final String thumbnailUrl;

  Album({this.albumId, this.id, this.title, this.imageUrl, this.thumbnailUrl});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      albumId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
