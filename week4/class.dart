void main() {
  int? newMoney;
  // ignore: unnecessary_null_comparison
  if (newMoney != null) {
    print(newMoney + 70);
  } else {
    print('newMoney is null');
  }

  List<int?> customerMoney = [100, 30, 40, 0, null];
  for (int? money in customerMoney) {
    if (money != null) {
      if (money > 0) {
        print("Welcome to our bank");
      } else {
        print("Bye bye");
      }
    } else {
      print("Let's open an account");
    }
  }
}

// Class
class User {
  late final String name;
  late final int money;
  late final int? age;
  late final String? city;
  late final String userCode;

  User(String name, int money, {int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    this.userCode = (city ?? 'Ankara') + name;
  }
}

//
class User2 {
  final String name;
  final int money;
  final int? age;
  final String? city;
  late final String userCode;

  User2(this.name, this.money, {this.age, this.city}) {
    this.userCode = (city ?? 'Ankara') + name;
  }
}

//
class User3 {
  late final String name;
  late final int money;
  late final int? age;
  late final String? city;
  late final String userCode;
  final String id;

  User3(String name, int money, {required this.id, int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    this.userCode = (city ?? 'Ankara') + name;
  }
}

// Private
class User4 {
  late final String name;
  late final int money;
  late final int? age;
  late final String? city;
  late final String userCode;
  late final String _id;

  User4(String name, int money, {required String id, int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    this.userCode = (city ?? 'Ankara') + name;
    _id = id; // private
  }

  bool isSpecialUser(String id) {
    return _id == id;
  }

  bool get isEmptyId => _id.isEmpty;

  set id(String id) {
    _id = id; // id == null ? '' : id;
  }
}
