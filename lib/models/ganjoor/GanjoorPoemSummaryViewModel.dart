class GanjoorPoemSummaryViewModel {
  final int id;
  final String title;
  final String urlSlug;
  final String excerpt;

  GanjoorPoemSummaryViewModel(
      {this.id, this.title, this.urlSlug, this.excerpt});

  factory GanjoorPoemSummaryViewModel.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return GanjoorPoemSummaryViewModel(
        id: json['id'],
        title: json['title'],
        urlSlug: json['urlSlug'],
        excerpt: json['excerpt']);
  }
}
