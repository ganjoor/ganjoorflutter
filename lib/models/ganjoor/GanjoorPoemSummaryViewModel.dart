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

    String excerpt = json['excerpt'];
    if (excerpt.length > 100) {
      excerpt = excerpt.substring(0, 100);
      int n = excerpt.lastIndexOf(' ');
      if (n >= 0) {
        excerpt = excerpt.substring(0, n) + ' ...';
      } else {
        excerpt += '...';
      }
    }

    return GanjoorPoemSummaryViewModel(
        id: json['id'],
        title: json['title'],
        urlSlug: json['urlSlug'],
        excerpt: excerpt);
  }
}
