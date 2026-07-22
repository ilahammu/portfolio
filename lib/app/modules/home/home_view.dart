import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilham_porto/app/shared/widgets/top_navbar.dart';

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
            const TopNavbar(),

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
