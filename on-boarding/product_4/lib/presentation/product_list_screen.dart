import 'package:flutter/material.dart';
import 'package:product_4/domain/product.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products;

  ProductListScreen(this.products, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('\$${product.price.toString()}'),
            onTap: () {
              // Navigate to product details screen
            },
          );
        },
      ),
    );
  }
}
