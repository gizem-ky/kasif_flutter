import 'dart:convert';

class PlaceModel {
  String name;
  String trip;
  String image_url;
  String location;
  String belogto;
  String detail;
  String address;
  double? latitude; // Enlem
  double? longitude; // Boylam

  PlaceModel({
    required this.name,
    required this.trip,
    required this.image_url,
    required this.belogto,
    required this.location,
    required this.detail,
    required this.address,
    required this.latitude, // Enlem
    required this.longitude, // Boylam
  });

  PlaceModel copyWith({
    String? name,
    String? trip,
    String? image_url,
    String? location,
    String? belogto,
    String? detail,
    String? address,
    double? latitude,
    double? longitude,
  }) {
    return PlaceModel(
      name: name ?? this.name,
      trip: trip ?? this.trip,
      image_url: image_url ?? this.image_url,
      location: location ?? this.location,
      belogto: belogto ?? this.belogto,
      detail: detail ?? this.detail,
      address: address ?? this.address,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'trip': trip,
      'image_url': image_url,
      'location': location,
      'belogto': belogto,
      'detail': detail,
      'address': address,
      'latitude': latitude, // Enlem
      'longitude': longitude, // Boylam
    };
  }

  factory PlaceModel.fromMap(Map<String, dynamic> map) {
    return PlaceModel(
      name: map['name'],
      trip: map['trip'],
      image_url: map['image_url'],
      location: map['location'],
      belogto: map['belogto'],
      detail: map['detail'],
      address: map['address'],
      latitude: map['latitude'], // Enlem
      longitude: map['longitude'], // Boylam
    );
  }

  String toJson() => json.encode(toMap());

  factory PlaceModel.fromJson(String source) =>
      PlaceModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PlaceModel(name: $name, trip: $trip, image_url: $image_url, location: $location, belogto: $belogto, detail: $detail, address: $address, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PlaceModel &&
        other.name == name &&
        other.trip == trip &&
        other.image_url == image_url &&
        other.location == location &&
        other.belogto == belogto &&
        other.detail == detail &&
        other.address == address &&
        other.latitude == latitude && // Enlem
        other.longitude == longitude; // Boylam
  }

  @override
  int get hashCode {
    return name.hashCode ^
        trip.hashCode ^
        image_url.hashCode ^
        location.hashCode ^
        belogto.hashCode ^
        detail.hashCode ^
        address.hashCode ^
        latitude.hashCode ^ // Enlem
        longitude.hashCode; // Boylam
  }
}
