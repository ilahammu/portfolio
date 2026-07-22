import 'package:flutter/material.dart';
import 'package:get/get.dart'; // <-- Tambahan 1: Untuk pindah halaman (Routing)
import 'package:ilham_porto/app/routes/app_pages.dart';
import 'package:web/web.dart'
    as web; // <-- Tambahan 2: Untuk membuka link web/GitHub

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      color: Colors.white,
      child: Column(
        children: [
          // 1. Judul Section
          const Text(
            "My Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          const SizedBox(height: 30),

          // Daftar project
          // Proyek 1 :
          _buildProjectCard(
            title: "Monitoring Kambing (IoT)",
            platform: "Desktop Application ",
            description:
                "Aplikasi mobile lintas platform untuk memantau"
                "kondisi peternakan secara real-time berbasis Internet of Things.",
            icon: Icons.desktop_windows_outlined,
            githubUrl: "https://github.com/ilahammu/modernfarming_app",
            routeName: Routes.farmproject,
          ),

          const SizedBox(height: 20),

          // Proyek 2: Windows App (Riset Pindad)
          _buildProjectCard(
            title: "Smart Vest Research",
            platform: "Desktop Application ",
            description:
                "Aplikasi desktop yang dikembangkan dalam proyek "
                "kolaborasi bersama PT Pindad (Persero) untuk memonitor"
                "data sensor rompi pintar.",
            icon: Icons.desktop_windows_outlined,
            githubUrl: "https://github.com/ilahammu/smart-vest-airsoft",
            routeName: Routes.vestproject,
          ),

          _buildProjectCard(
            title: "Monitoring Suhu Ruangan",
            platform: "Mobile Application ",
            description: "Null",
            icon: Icons.smartphone_outlined,
            githubUrl: "https://github.com/ilahammu/modernfarming_app",
            routeName: Routes.farmproject,
          ),

          _buildProjectCard(
            title: "Aplikasi To do list",
            platform: "Mobile Application ",
            description: "Null",
            icon: Icons.desktop_windows_outlined,
            icon2: Icons.smartphone,
            githubUrl: "https://github.com/ilahammu/modernfarming_app",
            routeName: Routes.farmproject,
          ),
        ],
      ),
    );
  }

  // 3. Fungsi Pembuat Kartu (Sudah dimodifikasi parameter-nya)
  Widget _buildProjectCard({
    required String title,
    required String platform,
    required String description,
    required IconData icon,
    IconData? icon2,
    required String githubUrl,
    required String routeName,
  }) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 800),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Baris Atas: Ikon dan Judul
          Row(
            children: [
              Icon(icon, size: 40, color: Colors.blueAccent),
              Icon(icon2, size: 40, color: Colors.blueAccent),

              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      platform,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),

          // Bagian Tengah: Deskripsi Proyek
          Text(
            description,
            style: const TextStyle(height: 1.5, color: Colors.black87),
          ),
          const SizedBox(height: 20),

          // 4. Bagian Bawah: DUA TOMBOL BERDAMPINGAN
          // Menggunakan Wrap agar jika layar kekecilan (HP), tombolnya otomatis turun ke bawah
          Wrap(
            spacing: 15, // Jarak horizontal antar tombol
            runSpacing: 10, // Jarak vertikal jika tombol turun ke baris baru
            children: [
              // Tombol 1: View Full Description
              ElevatedButton.icon(
                onPressed: () {
                  // <-- Mengeksekusi perpindahan halaman sesuai rute yang disuntikkan dari atas
                  Get.toNamed(routeName);
                },
                icon: const Icon(Icons.article, size: 18),
                label: const Text("View Full Description"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),

              // Tombol 2: Github Source Code
              OutlinedButton.icon(
                onPressed: () {
                  // Perintah buka link GitHub di Tab Baru
                  web.window.open(githubUrl, '_blank');
                },
                icon: const Icon(Icons.code, size: 18),
                label: const Text("Github Source Code"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black87,
                  side: const BorderSide(
                    color: Colors.black26,
                  ), // Garis luar tipis
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
