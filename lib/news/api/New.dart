class New {
  int id;
  String title;
  String description;
  String imageUrl;

  New({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });
  static New objJson(Map<String, dynamic> json) {
    return New(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
    );
  }
}
