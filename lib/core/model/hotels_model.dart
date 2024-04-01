import 'dart:convert';

class HotelModel {
  String name;
  // ignore: non_constant_identifier_names
  String image_url;
  String belogto;
  String price;
  String address;
  String url;
  double? latitude; // Enlem
  double? longitude; // Boylam

  HotelModel({
    required this.name,
    // ignore: non_constant_identifier_names
    required this.image_url,
    required this.belogto,
    required this.price,
    required this.address,
    required this.url,
    required this.latitude, // Enlem
    required this.longitude, // Boylam
  });

  HotelModel copyWith({
    String? name,
    // ignore: non_constant_identifier_names
    String? image_url,
    String? belogto,
    String? price,
    String? address,
    String? url,
    double? latitude,
    double? longitude,
  }) {
    return HotelModel(
      name: name ?? this.name,
      image_url: image_url ?? this.image_url,
      belogto: belogto ?? this.belogto,
      price: price ?? this.price,
      address: address ?? this.address,
      url: url ?? this.url,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,  
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image_url': image_url,
      'belogto': belogto, 
      'price': price,
      'address': address,
      'url': url,
      'latitude': latitude, // Enlem
      'longitude': longitude, // Boylam
    };
  }

  factory HotelModel.fromMap(Map<String, dynamic> map) {
    return HotelModel(
      name: map['name'],
      image_url: map['image_url'],
      belogto: map['belogto'],
      price: map['price'],
      address: map['address'],
      url: map['url'],
      latitude: map['latitude'], // Enlem
      longitude: map['longitude'], // Boylam
    );
  }

  String toJson() => json.encode(toMap());

  factory HotelModel.fromJson(String source) =>
      HotelModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'HotelModel(name: $name, image_url: $image_url, belogto: $belogto, price: $price, address: $address, url: $url, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is HotelModel &&
      other.name == name &&
      other.image_url == image_url &&
      other.belogto == belogto &&
      other.price == price &&
      other.address == address &&
      other.url == url &&
      other.latitude == latitude && // Enlem
      other.longitude == longitude; // Boylam

  }

  @override
  int get hashCode {
    return name.hashCode ^
      image_url.hashCode ^
      belogto.hashCode ^ 
      price.hashCode ^
      address.hashCode ^
      url.hashCode ^
      latitude.hashCode ^ // Enlem
      longitude.hashCode; // Boylam
  }
}
