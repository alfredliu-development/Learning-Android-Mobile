import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../widgets/main_bottom_nav.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = List.generate(20, (index) => 'Product ${index + 1}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        // actions: [
        //   IconButton(icon: const Icon(Icons.filter_list), onPressed: () {}),
        //   IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
        // ],
      ),
      drawer: const MainDrawer(),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: Text(products[index]),
            subtitle: const Text('Deskripsi singkat produk'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          );
        },
      ),
      bottomNavigationBar: const MainBottomNav(currentIndex: 1),
    );
  }
}
