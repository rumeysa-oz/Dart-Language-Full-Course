void main(List<String> args) {
  final newProduct = Product.money;
  print(newProduct);

  calculateMoney();

  //
  productNameChange();

  //
  ///calculateMoney(Product.money ?? 0);

  // 2
  final user1 = User('John', 'aa');

  final newProduct2 = Product2(user1.product);
  final newProduct3 = Product2.fromUser(user1);

  print(newProduct2);
  print(newProduct3);

  productNameChange();

  //
  PtoductConfig.instance.apiKey;
  PoductLazySingleton.instance;
}

// 1.2
void calculateMoney() {
  if (Product.money > 5) {
    print('Adding money...');
    //Product.money += 5;
    Product.incrementMoney(5);
    print(Product.money);
  }
}

// 6
void productNameChange() {
  Product2.money = null;
}

// 1.1
class Product {
  static int money = 10;

  static void incrementMoney(int newMoney) {
    money += newMoney;
  }
}

// 2
class Product2 {
  static int? money = 10;
  String name;

  Product2(this.name);

  Product2.John([this.name = 'John']);

  factory Product2.fromUser(User user) {
    return Product2(user.name);
  }

  static const companyNmae = 'Apple';

  static void incrementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

// 3
class User {
  final String name;
  final String product;

  User(this.name, this.product);
}

// 4 Eager Singleton
class PtoductConfig {
  static final PtoductConfig instance = PtoductConfig._("a");

  final String apiKey;
  PtoductConfig._(this.apiKey);
}

// 5
class PoductLazySingleton {
  static PoductLazySingleton? _instance;
  static PoductLazySingleton get instance {
    if (_instance == null) _instance = PoductLazySingleton._init();
    return _instance!;
  }

  PoductLazySingleton._init() {
    print('Created');
  }
}
