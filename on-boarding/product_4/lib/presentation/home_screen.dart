import 'package:flutter/material.dart';
import 'package:product_4/domain/product.dart';
import 'package:product_4/domain/view_all_products_usecase.dart';
import 'product_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final ViewAllProductsUseCase viewAllProductsUseCase;

  const HomeScreen(this.viewAllProductsUseCase, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: FutureBuilder<List<Product>>(
        future: viewAllProductsUseCase.execute(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No products available'));
          } else {
            final products = snapshot.data!;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ListTile(
                  leading: Image.network(
                    product.imageUrl,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(product.name),
                  subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailScreen(product),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
