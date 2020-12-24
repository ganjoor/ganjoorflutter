import 'GanjoorPoemSummaryViewModel.dart';

class GanjoorCatViewModel {
  final int id;
  final String title;
  final String urlSlug;
  final List<GanjoorCatViewModel> ancestors;
  final List<GanjoorCatViewModel> children;
  final List<GanjoorPoemSummaryViewModel> poems;

  GanjoorCatViewModel(
      {this.id,
      this.title,
      this.urlSlug,
      this.ancestors,
      this.children,
      this.poems});

  factory GanjoorCatViewModel.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return GanjoorCatViewModel(
      id: json['id'],
      title: json['title'],
      urlSlug: json['urlSlug'],
      ancestors: (json['ancestors'] as List)
          .map((i) => GanjoorCatViewModel.fromJson(i))
          .toList(),
      children: (json['children'] as List)
          .map((i) => GanjoorCatViewModel.fromJson(i))
          .toList(),
      poems: (json['poems'] as List)
          .map((i) => GanjoorPoemSummaryViewModel.fromJson(i))
          .toList(),
    );
  }
}
