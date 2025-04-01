class Product {
  // Define the properties of Product here
  final String id;
  final String name;

  Product(this.id, this.name);
}

class ProductRepository {
  // Define the method to fetch a product by ID
  Future<Product?> getProductById(String id) async {
    // Simulate fetching a product (replace with actual implementation)
    return Product(id, 'Sample Product');
  }
}

class ViewProductUseCase {
  final ProductRepository repository;

  ViewProductUseCase(this.repository);

  Future<Product?> call(String id) {
    return repository.getProductById(id);
  }
}
