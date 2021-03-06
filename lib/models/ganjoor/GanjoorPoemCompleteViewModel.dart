import 'package:ganjoorflutter/models/recitation/PublicRecitationViewModel.dart';

import 'GanjoorPoemSummaryViewModel.dart';
import 'GanjoorPoetCompleteViewModel.dart';
import 'GanjoorVerseViewModel.dart';

class GanjoorPoemCompleteViewModel {
  final int id;
  final String title;
  final String fullTitle;
  final String urlSlug;
  final String fullUrl;
  final String plainText;
  final String htmlText;
  final GanjoorPoemSummaryViewModel next;
  final GanjoorPoemSummaryViewModel previous;
  final GanjoorPoetCompleteViewModel category;
  final List<PublicRecitationViewModel> recitations;
  final List<GanjoorVerseViewModel> verses;

  GanjoorPoemCompleteViewModel(
      {this.id,
      this.title,
      this.fullTitle,
      this.urlSlug,
      this.fullUrl,
      this.plainText,
      this.htmlText,
      this.next,
      this.previous,
      this.category,
      this.recitations,
      this.verses});

  factory GanjoorPoemCompleteViewModel.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return GanjoorPoemCompleteViewModel(
        id: json['id'],
        title: json['title'],
        fullTitle: json['fullTitle'],
        urlSlug: json['urlSlug'],
        fullUrl: json['fullUrl'],
        plainText: json['plainText'],
        htmlText: json['htmlText'],
        next: json['next'] == null
            ? null
            : GanjoorPoemSummaryViewModel.fromJson(json['next']),
        previous: json['previous'] == null
            ? null
            : GanjoorPoemSummaryViewModel.fromJson(json['previous']),
        category: json['category'] == null
            ? null
            : GanjoorPoetCompleteViewModel.fromJson(json['category']),
        recitations: json['recitations'] == null
            ? null
            : (json['recitations'] as List)
                .map((i) => PublicRecitationViewModel.fromJson(i))
                .toList(),
        verses: json['verses'] == null
            ? null
            : (json['verses'] as List)
                .map((i) => GanjoorVerseViewModel.fromJson(i))
                .toList());
  }
}
