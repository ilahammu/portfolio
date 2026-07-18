import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ilham_porto/core/responsive_layout.dart';
import 'package:ilham_porto/app/modules/home/home_controller.dart';

import 'package:ilham_porto/app/modules/home/widgets/about_section.dart';
import 'package:ilham_porto/app/modules/home/widgets/hero_section.dart';
import 'package:ilham_porto/app/modules/home/widgets/projects_section.dart';

//================================================================================
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Scaffold(
      body: ResponsiveLayout(
        // --------------Tampilan Handphone--------------
        mobileBody: SingleChildScrollView(
          child: Column(
            children: [
              HeroSection(key: controller.heroKey),
              AboutSection(key: controller.aboutKey),
              ProjectsSection(key: controller.projectsKey),
            ],
          ),
        ),
        // --------------Tampilan Desktop--------------
        desktopBody: Column(
          children: [
            // 1. Navbar Desktop (Menu Atas)
            Container(
              height: 70,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 0,
              ), // Spasi kiri-kanan lebih lebar untuk PC
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 171, 54, 54),
                boxShadow: [
                  // Bayangan tipis di bawah Navbar
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceAround, // Dorong logo ke kiri, menu ke kanan
                children: [
                  // Logo / Nama
                  const Text(
                    "ILHAM.",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  // Kumpulan Tombol Menu
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          controller.scrollToSection(controller.heroKey);
                          print("home ditekan");
                        },
                        child: const Text(
                          "Home",
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                      const SizedBox(width: 30),
                      TextButton(
                        onPressed: () =>
                            controller.scrollToSection(controller.aboutKey),
                        child: const Text(
                          "About",
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                      const SizedBox(width: 30),
                      TextButton(
                        onPressed: () =>
                            controller.scrollToSection(controller.projectsKey),
                        child: const Text(
                          "Projects",
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // 2. Area Konten Utama (Scrollable)
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HeroSection(key: controller.heroKey),
                    AboutSection(key: controller.aboutKey),
                    ProjectsSection(key: controller.projectsKey),
                  ],
                ),
              ),
            ),
          ],
        ),
        //========================================================================================
      ),
    );
  }
}
