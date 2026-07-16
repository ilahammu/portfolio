import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilham_porto/app/modules/home/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Portofolio Ilham',
      debugShowCheckedModeBanner:
          false, // Hilangkan pita tulisan "DEBUG" di pojok kanan atas
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
