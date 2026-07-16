import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.desktopBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Jika lebar layar kurang dari 800 pixel, render tampilan Mobile
        if (constraints.maxWidth < 400) {
          return mobileBody;
        } else {
          // Jika lebih dari 800 pixel, render tampilan Desktop
          return desktopBody;
        }
      },
    );
  }
}
