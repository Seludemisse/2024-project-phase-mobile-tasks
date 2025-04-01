import 'package:product_4/domain/product.dart';
import 'package:product_4/domain/product_repository.dart';

class UpdateProductUseCase {
  final ProductRepository repository;

  UpdateProductUseCase(this.repository);

  Future<void> call(Product product) async {
    await repository.updateProduct(product);
  }
}
