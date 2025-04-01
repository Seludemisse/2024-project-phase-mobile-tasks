import 'package:product_4/domain/product.dart';
import 'package:product_4/domain/product_repository.dart';

class ViewAllProductsUseCase {
  final ProductRepository repository;

  ViewAllProductsUseCase(this.repository);

  // Use this method to fetch all products
  Future<List<Product>> execute() {
    return repository.getAllProducts();
  }
}
