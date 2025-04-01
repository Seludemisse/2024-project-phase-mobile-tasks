import 'package:flutter/material.dart';
import 'package:product_4/domain/view_all_products_usecase.dart';
import 'package:product_4/data/product_repository_impl.dart'; // Import the implementation of ProductRepository
import 'package:product_4/presentation/home_screen.dart';

void main() {
  final productRepository = ProductRepositoryImpl(); // Create an instance of ProductRepository
  final viewAllProductsUseCase = ViewAllProductsUseCase(productRepository);
  runApp(MyApp(viewAllProductsUseCase: viewAllProductsUseCase));
}
class MyApp extends StatelessWidget {
  final ViewAllProductsUseCase viewAllProductsUseCase;

  MyApp({required this.viewAllProductsUseCase});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      home: HomeScreen(viewAllProductsUseCase),
    );
  }
}

