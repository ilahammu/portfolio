import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilham_porto/app/modules/home/home_controller.dart';
import 'package:ilham_porto/app/routes/app_pages.dart';

class TopNavbar extends StatelessWidget {
  const TopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    // Mencari otak penggerak Home. (Bisa null jika kita sedang tidak di halaman Home)
    final HomeController? controller = Get.isRegistered<HomeController>()
        ? Get.find<HomeController>()
        : null;

    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.white, Colors.black12],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // 1. Logo / Nama
          GestureDetector(
            onTap: () => Get.offAllNamed(Routes.HOME),
            child: const Text(
              "ILHAM.",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),

          // 2. Kumpulan Tombol Menu
          Row(
            children: [
              _buildNavButton("Home", () {
                if (Get.currentRoute == Routes.HOME && controller != null) {
                  controller.scrollToSection(controller.heroKey);
                } else {
                  Get.offAllNamed(Routes.HOME); // Paksa pulang ke halaman utama
                }
              }),
              const SizedBox(width: 10),

              _buildNavButton("About", () {
                if (Get.currentRoute == Routes.HOME && controller != null) {
                  controller.scrollToSection(controller.aboutKey);
                } else {
                  Get.offAllNamed(Routes.HOME);
                }
              }),
              const SizedBox(width: 10),

              _buildNavButton("Projects", () {
                if (Get.currentRoute == Routes.HOME && controller != null) {
                  controller.scrollToSection(controller.projectsKey);
                } else {
                  Get.offAllNamed(Routes.HOME);
                }
              }),
              const SizedBox(width: 10),

              _buildNavButton("Contact", () {
                if (Get.currentRoute == Routes.HOME && controller != null) {
                  controller.scrollToSection(controller.projectsKey);
                } else {
                  Get.offAllNamed(Routes.HOME);
                }
              }),
            ],
          ),
        ],
      ),
    );
  }

  // Fungsi pembantu agar kode tombol tidak panjang berulang-ulang
  Widget _buildNavButton(String title, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
