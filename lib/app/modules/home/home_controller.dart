import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final heroKey = GlobalKey();
  final aboutKey = GlobalKey();
  final projectsKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext; // Mencari letak elemen saat ini

    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut, // Gaya animasinya mulus di awal dan akhir
      );
    }
  }
}
