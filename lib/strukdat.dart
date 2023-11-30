import 'word_model.dart';

class Strukdat {
  List<WordModel> _list = [];

  List<WordModel> get list => _list;

  set list(List<WordModel> value) {
    _list = value;
    binarySort();
  }

  //create binary sort method for list<WordModel> sort by word property
  void binarySort() {
    int n = _list.length;
    for (int i = 0; i < n - 1; i++) {
      for (int j = 0; j < n - i - 1; j++) {
        if (_list[j].word.compareTo(_list[j + 1].word) > 0) {
          WordModel temp = _list[j];
          _list[j] = _list[j + 1];
          _list[j + 1] = temp;
        }
      }
    }
  }

  //create binary search method for list<WordModel> search by word property
  WordModel? binarySearch(String word) {
    int left = 0;
    int right = _list.length - 1;
    while (left <= right) {
      int mid = (left + right) ~/ 2;
      if (_list[mid].word.compareTo(word) == 0) {
        return _list[mid];
      } else if (_list[mid].word.compareTo(word) < 0) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return null;
  }
}
