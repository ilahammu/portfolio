import 'package:flutter/material.dart';
import 'package:ilham_porto/app/modules/home/widgets/about_section.dart';
import 'package:ilham_porto/app/modules/home/widgets/hero_section.dart';
import 'package:ilham_porto/app/modules/home/widgets/projects_section.dart';
import 'package:ilham_porto/core/responsive_layout.dart';

//================================================================================
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        // --------------Tampilan Handphone--------------
        mobileBody: SingleChildScrollView(
          child: Column(
            children: const [
              HeroSection(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0),
                child: Divider(height: 0, thickness: 10, color: Colors.grey),
              ),
              AboutSection(),
              ProjectsSection(),
            ],
          ),
        ),
        // --------------Tampilan Desktop--------------
        desktopBody: Container(
          color: const Color.fromARGB(255, 100, 130, 101),
          child: const Center(
            child: Text(
              "Desktop",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
