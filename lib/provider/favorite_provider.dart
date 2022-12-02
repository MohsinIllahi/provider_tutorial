import 'package:flutter/foundation.dart';

class FavouriteItemProvider extends ChangeNotifier {
  // List<String> _words = [];
  // List<String> get words => _words;

  // void toggleFavorite(String word) {
  //   final isExist = _words.contains(word);
  //   if (isExist) {
  //     _words.remove(word);
  //   } else {
  //     _words.add(word);
  //   }
  //   notifyListeners();
  // }

  // void clearFavorite() {
  //   _words = [];
  //   notifyListeners();
  // }
  List<int> _selectedItem = [];
  List<int> get selectedItem => _selectedItem;

  void addItem(int value) {
    _selectedItem.add(value);
    notifyListeners();
  }

  void removeItem(int value) {
    _selectedItem.remove(value);
    notifyListeners();
  }
}
