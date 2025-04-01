import 'product_repository.dart';
import 'product.dart'; // Ensure this file contains the definition of the Product class

class CreateProductUseCase {
  final ProductRepository repository;

  CreateProductUseCase(this.repository);

  Future<void> call(Product product) {
    return repository.createProduct(product);
  }
}
