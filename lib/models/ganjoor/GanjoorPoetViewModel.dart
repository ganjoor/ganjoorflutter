import 'package:ganjoorflutter/services/gservice-address.dart';

class GanjoorPoetViewModel {
  final int id;
  final String name;
  final String description;
  final String fullUrl;
  final String imageUrl;
  final int rootCatId;

  GanjoorPoetViewModel(
      {this.id,
      this.name,
      this.description,
      this.fullUrl,
      this.imageUrl,
      this.rootCatId});

  factory GanjoorPoetViewModel.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return GanjoorPoetViewModel(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        fullUrl: json['fullUrl'],
        imageUrl: GServiceAddress.Url + json['imageUrl'],
        rootCatId: json['rootCatId']);
  }
}
