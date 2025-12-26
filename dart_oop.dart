// ignore_for_file: use_super_parameters

void main() {
  User user = User.withDetails("Ali", "ali@email.com");
  Admin admin = Admin("Admin", "admin@email.com");

  print(user);
  print(admin);

  Animal dog = Dog();
  dog.makeSound();

  ShoppingCart cart = ShoppingCart();
  cart.addProduct(Product("Laptop", 100000));
  cart.addProduct(Product("Mouse", 2000));
  print("Total: ${cart.calculateTotal()}");
}

class User {
  String _name;
  final String _email;

  User(this._name, this._email);

  User.withDetails(this._name, this._email);

  // ignore: unnecessary_getters_setters
  String get name => _name;
  set name(String value) => _name = value;

  @override
  String toString() => "User: $_name, $_email";
}

class Admin extends User {
  Admin(String name, String email) : super(name, email);

  @override
  String toString() => "Admin: $name";
}

abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}

class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class ShoppingCart {
  List<Product> products = [];

  void addProduct(Product p) => products.add(p);

  void removeProduct(Product p) => products.remove(p);

  double calculateTotal() =>
      products.fold(0, (sum, p) => sum + p.price);
}
