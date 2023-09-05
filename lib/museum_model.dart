class Museum {
  int id;
  String name;
  String description;
  List<String> photoList;
  String location;
  String price;

  Museum({
    required this.id,
    required this.name,
    required this.description,
    required this.photoList,
    required this.location,
    required this.price,
  });

  factory Museum.fromJson(Map<String, dynamic> json) {
    return Museum(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      photoList: (json['photoList'] as List<dynamic>)
          .map((e) => e.toString())
          .toList(),
      location: json['location'],
      price: json['price'],
    );
  }
}
