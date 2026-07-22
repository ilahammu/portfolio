import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VestProject extends StatelessWidget {
  const VestProject({super.key});

  @override
  Widget build(BuildContext context) {
    // Menangkap data yang dikirim dari tombol (judul, deskripsi, dll)
    final Map<String, dynamic> projectData = Get.arguments ?? {};

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(projectData['title'] ?? 'Detail Project'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              projectData['title'] ?? 'Judul Tidak Ada',
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(projectData['platform'] ?? 'Platform'),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                projectData['description'] ?? 'Deskripsi kosong',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
