import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      color: Colors
          .grey[50], // Memberikan warna latar sedikit berbeda dari Hero agar ada pemisah visual
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 1. Judul Section
          const Text(
            "About Me",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          const SizedBox(height: 20),

          // 2. Kotak Teks Deskripsi Profil
          Container(
            width:
                800, // Membatasi lebar teks agar nyaman dibaca di layar besar maupun kecil
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: const Text(
              "Halo! Saat ini saya sedang menempuh pendidikan S1 Teknik Komputer di Telkom University. "
              "Sebelumnya, saya telah menyelesaikan pendidikan D3 Teknologi Komputer dengan IPK 3.87/4.00. "
              "Sebagai developer yang berfokus pada ekosistem Flutter dan Dart, saya memiliki ketertarikan kuat dalam membangun aplikasi lintas platform. "
              "Selain itu, saya juga merupakan profesional bersertifikat Google IT Support dengan pengalaman praktis dalam manajemen laboratorium komputer. "
              "Saya selalu antusias untuk terus belajar dan menciptakan solusi digital yang efisien.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                height: 1.6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
