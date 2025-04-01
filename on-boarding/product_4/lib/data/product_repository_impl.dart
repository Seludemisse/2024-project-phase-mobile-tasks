import 'package:product_4/domain/product.dart';

// Ensure the Product class is defined in the imported file
// Example:
// class Product {
//   final String id;
//   final String name;
//   final String description;
//   final double price;

//   Product({required this.id, required this.name, required this.description, required this.price});
// }
import 'package:product_4/domain/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {

  @override
  Future<List<Product>> getAllProducts() async {
    // Simulate a network delay
    await Future.delayed(Duration(seconds: 2));

    // Returning mock data
    return [
      Product(id: '1', name: 'Laptop', description: 'Description of Product 1', price: 10.99, imageUrl: 'https://example.com/product1.jpg'),
      Product(id: '2', name: 'smartphone', description: 'Description of Product 2', price: 20.99, imageUrl: 'https://example.com/product2.jpg'),
      Product(id: '3', name: 'Headphones', description: 'Description of Product 3', price: 30.99, imageUrl: 'https://example.com/product3.jpg'),
      Product(id: '4', name: 'desktop', description: 'Description of Product 4', price: 40.99, imageUrl: 'https://example.com/product4.jpg'),
    ];
  }

  @override
  Future<Product> getProductById(String productId) async {
    // Simulate a network delay
    await Future.delayed(Duration(seconds: 2));

    // Returning a mock product
    return Product(id: productId, name: 'Product $productId', description: 'Description of Product $productId', price: 10.99, imageUrl: 'https://example.com/product$productId.jpg');
  }

  @override
  Future<void> createProduct(Product product) async {
    // Simulate a network delay
    await Future.delayed(Duration(seconds: 1));

    // Mock creation, no actual data is saved
  }

  @override
  Future<void> updateProduct(Product product) async {
    // Simulate a network delay
    await Future.delayed(Duration(seconds: 1));

    // Mock update, no actual data is updated
  }

  @override
  Future<void> deleteProduct(String productId) async {
    // Simulate a network delay
    await Future.delayed(Duration(seconds: 1));

    // Mock delete, no actual data is deleted
  }
}
