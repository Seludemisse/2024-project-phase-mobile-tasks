import 'package:product_4/domain/product_repository.dart';

class DeleteProductUseCase {
  final ProductRepository repository;

  DeleteProductUseCase(this.repository);

  Future<void> call(String id) async {
    await repository.deleteProduct(id);
  }
}
