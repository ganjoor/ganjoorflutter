import 'GanjoorCatViewModel.dart';
import 'GanjoorPoetViewModel.dart';

class GanjoorPoetCompleteViewModel {
  final GanjoorPoetViewModel poet;
  final GanjoorCatViewModel cat;

  GanjoorPoetCompleteViewModel({this.poet, this.cat});

  factory GanjoorPoetCompleteViewModel.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return GanjoorPoetCompleteViewModel(
        poet: GanjoorPoetViewModel.fromJson(json['poet']),
        cat: GanjoorCatViewModel.fromJson(json['cat']));
  }
}
