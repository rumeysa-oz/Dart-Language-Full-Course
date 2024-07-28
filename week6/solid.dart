// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  IDatabase database = SQL();

  database = Mongo();
  database.write();
}

// Single Responsibility Principle: A class should have one and only one responsibility.
class UserManager {
  String name;
  UserManager({
    required this.name,
  });
  void changeUserNmae(String name) {
    this.name = name;
  }
}

class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);

  void updateNameAndLocalization() {
    manager.changeUserNmae('John');
    changeLocalization();
  }

  void changeLocalization() {
    print('object');
  }
}

// Open-Closed Principle: A class should be open for extension but closed for modification.
class Product {
  final String name;
  final int price;

  Product({required this.name, required this.price});
}

class ProductCategories extends Product {
  ProductCategories(String name, int price) : super(name: name, price: price);

  final String category = 'Food';
}

// Liskov Substitution Principle: A class should be substitutable for its subclasses.
abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {
    print('SQL write');
  }
}

class Mongo extends IDatabase {
  @override
  void write() {
    print('Mongo write');
  }
}

// Interface Segregation Principle: A class should not depend on interfaces that it does not use.
abstract class IUserOperation implements IDelete, IUpdate {
  void write();
  void read();
  void search();
}

abstract class IDelete {
  void delete();
}

abstract class IUpdate {
  void update();
}

// Dependency Inversion Principle: A class should depend on abstractions and not concretions.
abstract class ICameraManager {
  void readQr();
}
class DeviceCameraManager extends ICameraManager {
  final IphoneCameraRead iphoneCameraRead;

  DeviceCameraManager({required this.iphoneCameraRead});

  @override
  void readQr() {
    iphoneCameraRead.readQr();
  }
  
}
class IphoneCameraRead extends ICameraManager {
  @override
  void readQr() {
    // TODO: implement readQr
  }
  
}


