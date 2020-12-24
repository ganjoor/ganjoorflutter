class VersePosition {
  static const int Right = 0;
  static const int Left = 1;
  static const int CenteredVerse1 = 2;
  static const int CenteredVerse2 = 3;
  static const int Single = 4;
  static const int Paragraph = -1;
}

class GanjoorVerseViewModel {
  final int id;
  final int vOrder;
  final int versePosition;
  final String text;

  GanjoorVerseViewModel({this.id, this.vOrder, this.versePosition, this.text});

  factory GanjoorVerseViewModel.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return GanjoorVerseViewModel(
        id: json['id'],
        vOrder: json['vOrder'],
        versePosition: json['versePosition'],
        text: json['text']);
  }
}
