import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Memaksa lebar memenuhi layar
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 1. Foto Profil (CircleAvatar)
          const CircleAvatar(
            radius: 70,
            backgroundColor: Colors.blueAccent,
            backgroundImage: AssetImage('assets/images/gweh.jpg'),
          ),
          const SizedBox(height: 20), // Jarak spasi
          // 2. Teks Sapaan
          const Text(
            "Hi, I'm Ilham! 👋",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),

          // 3. Teks Deskripsi Singkat / Headline
          const Text(
            "Undergraduate Student in Computer Engineering\nFlutter & Dart Developer | Google IT Support Certified",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black54, height: 1.5),
          ),
          const SizedBox(height: 30),

          // 4. Tombol Download CV
          ElevatedButton.icon(
            onPressed: () {
              // Nanti kita isi logika untuk download file PDF CV-mu
              print("Tombol CV Ditekan!");
            },
            icon: const Icon(Icons.download),
            label: const Text("Download CV"),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
