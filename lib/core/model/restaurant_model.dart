import 'dart:convert';


class RestaurantModel {
  String name;
  // ignore: non_constant_identifier_names
  String image_url;
  String belogto;

  RestaurantModel({
    required this.name,
    // ignore: non_constant_identifier_names
    required this.image_url,
    required this.belogto,
  });

  RestaurantModel copyWith({
    String? name,
    String? trip,
    // ignore: non_constant_identifier_names
    String? image_url,
    String? belogto,
  }) {
    return RestaurantModel(
      name: name ?? this.name,
      image_url: image_url ?? this.image_url,
      belogto: belogto ?? this.belogto,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image_url': image_url,
      'belogto': belogto, 
    };
  }

  factory RestaurantModel.fromMap(Map<String, dynamic> map) {
    return RestaurantModel(
      name: map['name'],
      image_url: map['image_url'],
      belogto: map['belogto'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RestaurantModel.fromJson(String source) =>
      RestaurantModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RestaurantModel(name: $name, image_url: $image_url, belogto: $belogto)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is RestaurantModel &&
      other.name == name &&
      other.image_url == image_url &&
      other.belogto == belogto;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      image_url.hashCode ^
      belogto.hashCode;
  }
}
