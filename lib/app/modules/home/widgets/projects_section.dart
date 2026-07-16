import 'package:flutter/material.dart';

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

          // 2. Daftar Kartu Proyek
          // Proyek 1: Mobile App
          _buildProjectCard(
            title: "Monitoring Kambing (IoT)",
            platform: "Mobile Application (Android)",
            description:
                "Aplikasi mobile lintas platform untuk memantau kondisi peternakan secara real-time berbasis Internet of Things.",
            buttonText: "Download APK",
            icon: Icons.desktop_windows_outlined,
          ),
          const SizedBox(height: 20),

          // Proyek 2: Windows App (Riset Pindad)
          _buildProjectCard(
            title: "Smart Vest Research",
            platform: "Desktop Application (Windows)",
            description:
                "Aplikasi desktop yang dikembangkan dalam proyek kolaborasi bersama PT Pindad (Persero) untuk memonitor data sensor rompi pintar.",
            buttonText: "Download .exe",
            icon: Icons.desktop_windows_outlined,
          ),
        ],
      ),
    );
  }

  // 3. Fungsi Pembuat Kartu (Widget Helper)
  Widget _buildProjectCard({
    required String title,
    required String platform,
    required String description,
    required String buttonText,
    required IconData icon,
  }) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 800),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade200), // Garis tepi tipis
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

          // Bagian Bawah: Tombol Aksi
          ElevatedButton.icon(
            onPressed: () {
              // Logika untuk mengunduh file akan ditaruh di sini
              print("Mendownload $title");
            },
            icon: const Icon(Icons.download, size: 18),
            label: Text(buttonText),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
