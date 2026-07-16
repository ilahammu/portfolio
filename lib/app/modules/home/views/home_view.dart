import 'package:flutter/material.dart';
import 'package:ilham_porto/core/responsive_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: Container(
          color: Colors.blue[100],
          child: const Center(
            child: Text(
              "Hp",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),

        desktopBody: Container(
          color: Colors.green[100],
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
