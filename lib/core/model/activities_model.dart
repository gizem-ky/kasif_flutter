import 'dart:convert';

class ActivityModel {
  String name;
  String trip;
  // ignore: non_constant_identifier_names
  String image_url;
  String belogto;
  String location; 
  String price;
  String timing;
  String detail;
  String url;
  String saat;
  double? latitude; // Enlem
  double? longitude; // Boylam

  ActivityModel({
    required this.name,
    required this.trip,
    // ignore: non_constant_identifier_names
    required this.image_url,
    required this.belogto,
    required this.location, 
    required this.price,
    required this.timing,
    required this.detail,
    required this.url,
    required this.saat,
    required this.latitude, // Enlem
    required this.longitude, // Boylam
  });

  ActivityModel copyWith({
    String? name,
    String? trip,
    // ignore: non_constant_identifier_names
    String? image_url,
    String? belogto,
    String? location, 
    String? price,
    String? timing,
    String? detail,
    String? url,
    String? saat,
    double? latitude,
    double? longitude,
  }) {
    return ActivityModel(
      name: name ?? this.name,
      trip: trip ?? this.trip,
      image_url: image_url ?? this.image_url,
      belogto: belogto ?? this.belogto,
      location: location ?? this.location,
      price: price ?? this.price,
      timing: timing ?? this.timing,
      detail: detail ?? this.detail,
      url: url ?? this.url,
      saat: saat ?? this.saat,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'trip': trip,
      'image_url': image_url,
      'belogto': belogto,
      'location': location,
      'price': price,
      'timing': timing,
      'detail': detail,
      'url': url,
      'saat': saat,
      'latitude': latitude, // Enlem
      'longitude': longitude, // Boylam
    };
  }

  factory ActivityModel.fromMap(Map<String, dynamic> map) {
    return ActivityModel(
      name: map['name'],
      trip: map['trip'],
      image_url: map['image_url'],
      belogto: map['belogto'],
      location: map['location'], 
      price: map['price'],
      timing: map['timing'],
      detail: map['detail'],
      url: map['url'],
      saat: map['saat'],
      latitude: map['latitude'], // Enlem
      longitude: map['longitude'], // Boylam
    );
  }

  String toJson() => json.encode(toMap());

  factory ActivityModel.fromJson(String source) =>
      ActivityModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ActivityModel(name: $name, trip: $trip, image_url: $image_url, belogto: $belogto, location: $location, price: $price, timing: $timing, detail: $detail, url: $url, saat: $saat, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ActivityModel &&
      other.name == name &&
      other.trip == trip &&
      other.image_url == image_url &&
      other.belogto == belogto &&
      other.location == location && 
      other.price == price &&
      other.timing == timing &&
      other.detail == detail &&
      other.url == url &&
      other.saat == saat &&
      other.latitude == latitude && // Enlem
      other.longitude == longitude; // Boylam
  }

  @override
  int get hashCode {
    return name.hashCode ^
      trip.hashCode ^
      image_url.hashCode ^
      belogto.hashCode ^
      location.hashCode ^
      price.hashCode ^
      timing.hashCode ^
      detail.hashCode ^
      url.hashCode ^
      saat.hashCode ^
      latitude.hashCode ^ // Enlem
      longitude.hashCode; // Boylam
  }
}
