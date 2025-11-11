import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../widgets/main_bottom_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.search),
      //       onPressed: () {
      //         ScaffoldMessenger.of(context).showSnackBar(
      //           const SnackBar(content: Text('Search diklik')),
      //         );
      //       },
      //     ),
      //     IconButton(
      //       icon: const Icon(Icons.notifications),
      //       onPressed: () {
      //         ScaffoldMessenger.of(context).showSnackBar(
      //           const SnackBar(content: Text('Notifikasi diklik')),
      //         );
      //       },
      //     ),
      //   ],
      ),
      drawer: const MainDrawer(),
      body: const Center(
        child: Text(
          'Ini Halaman Home',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: const MainBottomNav(currentIndex: 0),
    );
  }
}
