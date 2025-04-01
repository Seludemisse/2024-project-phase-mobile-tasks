import 'dart:io';

class Product {
  String _name;
  String _description;
  double _price;

  Product(this._name, this._description, this._price);

  String get name => _name;
  String get description => _description;
  double get price => _price;

  set name(String name) => _name = name;
  set description(String description) => _description = description;
  set price(double price) => _price = price;

  void display() {
    print('Name: $_name, Description: $_description, Price: \$$_price');
  }
}

class ProductManager {
  List<Product> products = [];

  void addProduct() {
    stdout.write('Enter product name: ');
    String name = stdin.readLineSync()!;

    stdout.write('Enter product description: ');
    String description = stdin.readLineSync()!;

    stdout.write('Enter product price: ');
    double price = double.parse(stdin.readLineSync()!);

    products.add(Product(name, description, price));
    print('Product added successfully.');
  }

  void viewAllProducts() {
    if (products.isEmpty) {
      print('No products available.');
    } else {
      print('All Products:');
      for (int i = 0; i < products.length; i++) {
        print('${i + 1}.');
        products[i].display();
      }
    }
  }

  void viewProduct() {
    stdout.write('Enter product index to view: ');
    int index = int.parse(stdin.readLineSync()!) - 1;
    if (index < 0 || index >= products.length) {
      print('Invalid product index.');
    } else {
      products[index].display();
    }
  }

  void editProduct() {
    stdout.write('Enter product index to edit: ');
    int index = int.parse(stdin.readLineSync()!) - 1;
    if (index < 0 || index >= products.length) {
      print('Invalid product index.');
    } else {
      stdout.write('Enter new name: ');
      products[index].name = stdin.readLineSync()!;

      stdout.write('Enter new description: ');
      products[index].description = stdin.readLineSync()!;

      stdout.write('Enter new price: ');
      products[index].price = double.parse(stdin.readLineSync()!);

      print('Product updated successfully.');
    }
  }

  void deleteProduct() {
    stdout.write('Enter product index to delete: ');
    int index = int.parse(stdin.readLineSync()!) - 1;
    if (index < 0 || index >= products.length) {
      print('Invalid product index.');
    } else {
      products.removeAt(index);
      print('Product deleted successfully.');
    }
  }
}

void main() {
  ProductManager manager = ProductManager();
  bool running = true;

  while (running) {
    print('\n=== eCommerce Application ===');
    print('1. Add Product');
    print('2. View All Products');
    print('3. View Product');
    print('4. Edit Product');
    print('5. Delete Product');
    print('6. Exit');

    stdout.write('Select an option: ');
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        manager.addProduct();
        break;
      case '2':
        manager.viewAllProducts();
        break;
      case '3':
        manager.viewProduct();
        break;
      case '4':
        manager.editProduct();
        break;
      case '5':
        manager.deleteProduct();
        break;
      case '6':
        running = false;
        print('Exiting application.');
        break;
      default:
        print('Invalid option. Please try again.');
    }
  }
}
