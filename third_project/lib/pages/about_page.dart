import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../widgets/main_bottom_nav.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      drawer: const MainDrawer(),
      body: const Center(
        child: Text(
          'Ini halaman About (tombol ke-4 bottom nav)',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      bottomNavigationBar: const MainBottomNav(currentIndex: 3),
    );
  }
}
