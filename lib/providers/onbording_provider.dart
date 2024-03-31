import 'package:flutter/material.dart';

class OnbordingProvider with ChangeNotifier {
  int _currentPage = 0;

  int get currentPage => _currentPage;

  void setCurrentPage(int page) {
    _currentPage = page;
    notifyListeners();
  }

  nextPage() {
    _currentPage++;
    notifyListeners();
  }

  previousPage() {
    _currentPage--;
    notifyListeners();
  }
}