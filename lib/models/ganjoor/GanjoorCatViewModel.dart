import 'GanjoorPoemSummaryViewModel.dart';

class GanjoorCatViewModel {
  final int id;
  final String title;
  final String urlSlug;
  final GanjoorCatViewModel next;
  final GanjoorCatViewModel previous;
  final List<GanjoorCatViewModel> ancestors;
  final List<GanjoorCatViewModel> children;
  final List<GanjoorPoemSummaryViewModel> poems;

  GanjoorCatViewModel(
      {this.id,
      this.title,
      this.urlSlug,
      this.next,
      this.previous,
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
      next: json['next'] == null
          ? null
          : GanjoorCatViewModel.fromJson(json['next']),
      previous: json['previous'] == null
          ? null
          : GanjoorCatViewModel.fromJson(json['previous']),
      ancestors: json['ancestors'] == null
          ? []
          : (json['ancestors'] as List)
              .map((i) => GanjoorCatViewModel.fromJson(i))
              .toList(),
      children: json['children'] == null
          ? []
          : (json['children'] as List)
              .map((i) => GanjoorCatViewModel.fromJson(i))
              .toList(),
      poems: json['poems'] == null
          ? []
          : (json['poems'] as List)
              .map((i) => GanjoorPoemSummaryViewModel.fromJson(i))
              .toList(),
    );
  }
}
