// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'class_singleton.dart';

void main(List<String> args) {
  final model = CarModels(
    category: CarModelsCategory.bmw,
    name: 'X5',
    money: 20000,
    isSecondHand: false,
  );
  print(model);

  final carItems = [
    CarModels(category: CarModelsCategory.bmw, name: 'X5', money: 20000, isSecondHand: false),
    CarModels(category: CarModelsCategory.audi, name: 'A6', money: 15000),
    CarModels(category: CarModelsCategory.mercedes, name: 'C200', money: 5000, isSecondHand: false),
    CarModels(category: CarModelsCategory.toyota, name: 'Corolla', money: 10000),
    CarModels(category: CarModelsCategory.honda, name: 'Civic', money: 8000, isSecondHand: false),
  ];
  print(carItems);

  final resultCount = carItems.where((element) => element.isSecondHand == true).length;
  print(resultCount);

  final newCar = CarModels(category: CarModelsCategory.bmw, name: 'X5', money: 20000);

  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print('Car is exist');
  } else {
    print('Car is not exist');
  }

  //
  final resultBmwMore20 = carItems.where((element) {
    return element.category == CarModelsCategory.bmw && element.money > 20000;
  }).join();
  print(resultBmwMore20);

  final carNames = carItems.map((e) => e.name).join(', ');
  print(carNames);

//
  //final mercedesCar = carItems.singleWhere((element) => element.category == CarModelsCategory.mercedes);

  bool isHaveCarMercedes = false;
  try {
    final mercedesCar = carItems.singleWhere((element) => element.category == CarModelsCategory.mercedes);
    print(mercedesCar.name);
    isHaveCarMercedes = true;
  } catch (e) {
    print('Mercedes car is not exist');
    isHaveCarMercedes = false;
  } finally {
    print('This process is fail: $isHaveCarMercedes');
  }

  //
  final index = carItems.indexOf(newCar);
  print(index);
  
  carItems.add(CarModels(category: CarModelsCategory.audi, name: 'Q7', money: 30000));

  carItems.sort((first, second) => first.money.compareTo(second.money));
  print('Sorted: $carItems');

  carItems.sort((first, second) => second.money.compareTo(first.money));
  print('Reversed: $carItems');

  //
  final users = carItems.expand((element) => [element.users]).toList();
  print('Users: $users');

  //
  final _mercedes = CarModels(category: CarModelsCategory.mercedes, name: 'C200', money: 5000);
  carItems.add(_mercedes);
  carItems.remove(_mercedes);

  carItems.removeWhere((element) => element.category == CarModelsCategory.audi || element.money < 10000);
  print('Filter: $carItems');


}

//1
class CarModels {
  final CarModelsCategory category;
  final String name;
  final double money;

  List<User>? users;

  String? city;
  bool isSecondHand;
  
  CarModels({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
    this.users = const [],
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModels &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^ name.hashCode ^ money.hashCode ^ city.hashCode ^ isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModelsCategory { bmw, mercedes, audi, toyota, honda }
