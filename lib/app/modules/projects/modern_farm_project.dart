import 'package:flutter/material.dart';
import 'package:ilham_porto/app/shared/widgets/top_navbar.dart';

class ModernFarmProject extends StatelessWidget {
  const ModernFarmProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // 1. Lego Navbar Kita!
          const TopNavbar(),

          // 2. Konten Utama
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri
                children: [
                  // --- Bagian Header Judul ---
                  const Text(
                    "Monitoring Kambing (IoT)",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Mobile Application (Android)",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  const SizedBox(height: 40),

                  // --- Bagian Galeri / Screenshot Aplikasi ---
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        20,
                      ), // Efek lengkung di sudut gambar
                      child: Image.asset(
                        'assets/images/modernfarm/farm_1.png', // <-- Pastikan nama file ini sesuai dengan fotomu!
                        width: 800, // Batas maksimal lebar gambar di layar PC
                        fit: BoxFit.cover,
                        // errorBuilder ini cadangan kalau gambarnya belum dimasukkan
                        errorBuilder: (context, error, stackTrace) => Container(
                          width: 800,
                          height: 400,
                          color: Colors.grey.shade100,
                          child: const Center(
                            child: Text(
                              "Gambar Screenshot Aplikasi Akan Tampil Di Sini",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),

                  // --- Bagian Penjelasan Lengkap ---
                  const Text(
                    "Tentang Proyek Ini",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Aplikasi ini dibangun menggunakan kombinasi Flutter untuk antarmuka pengguna dan Node.js sebagai penggerak logika di sisi server. Sistem dirancang agar terintegrasi langsung dengan perangkat sensor IoT di area peternakan. Tujuan utamanya adalah untuk memonitor kondisi lingkungan secara real-time, sehingga kesehatan dan aktivitas peternakan dapat dipantau dari jarak jauh dengan tingkat latensi yang sangat rendah.",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.8, // Jarak antar baris teks agar enak dibaca
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // --- Fitur Utama ---
                  const Text(
                    "Fitur Utama:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  _buildFiturList(
                    "Pemantauan sensor kelembapan dan suhu secara real-time.",
                  ),
                  _buildFiturList(
                    "Notifikasi otomatis saat kondisi lingkungan tidak ideal.",
                  ),
                  _buildFiturList(
                    "Desain antarmuka (UI) lintas platform yang responsif.",
                  ),

                  const SizedBox(height: 50), // Ruang kosong di paling bawah
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi pembantu untuk membuat list fitur rapi dengan bullet point
  Widget _buildFiturList(String teks) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "• ",
            style: TextStyle(fontSize: 18, color: Colors.blueAccent),
          ),
          Expanded(
            child: Text(
              teks,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
