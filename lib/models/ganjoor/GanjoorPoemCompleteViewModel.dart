import 'package:ganjoorflutter/models/recitation/PublicRecitationViewModel.dart';

import 'GanjoorPoem.dart';

class GanjoorPoemCompleteViewModel {
  final GanjoorPoem poem;
  final List<PublicRecitationViewModel> recitations;

  GanjoorPoemCompleteViewModel({this.poem, this.recitations});

  factory GanjoorPoemCompleteViewModel.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return GanjoorPoemCompleteViewModel(
        poem: GanjoorPoem.fromJson(json['poem']),
        recitations: (json['recitations'] as List)
            .map((i) => PublicRecitationViewModel.fromJson(i))
            .toList());
  }
}
