void main(List<String> args) {
  final user = _User("John", age: null);

  final user2 = _User2("Alice", age: null);

  //if ((user.age ?? 0) < 18) {}
  // 1
  if (user.age is int) {
    if (user.age! < 18) {
      print("You are not allowed to enter");
    }
  }

  // 2
  if (user2.age is int) {
    if (user2.age! < 18) {
      print("You are not allowed to enter");
      user2.updateMoneyWithString('TR');
    } else {
      user2.updateMoneyWithNumber(100);
    }
  }

  final _newType = user2.moneyType is String ? (user2.moneyType as String) : "";
  print(_newType + "A");

  //

  final moneyBank1 = Bank(100, "123");
  final moneyBank2 = Bank(100, "123");
  print('moneyBank1 == moneyBank2: ${moneyBank1 == moneyBank2}');
  print('moneyBank1 + moneyBank2: ${moneyBank1 + moneyBank2}');
  print(moneyBank1.toString());
  print(moneyBank1 == moneyBank2);

  moneyBank1.money += 100;
  print(moneyBank1.money);

  //
  moneyBank1
    ..money += 100
    ..updateName('Bernard');

  print(moneyBank1);  
}

// 1
class _User {
  final String name;
  int? age;

  String moneyType = "TR";

  _User(this.name, {this.age});
}

// 2
class _User2 {
  final String name;
  int? age;

  dynamic moneyType;

  _User2(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

// 3
class Bank with BankMixin {
  int money;
  final String id;
  
  String? name;

  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    return money + newBank.money;
  }

  void updateName(String name) {
    this.name = name;
  }

  @override
  String toString() {
    return super.toString() + 'Bernard';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Bank && other.id == id;
  }

  @override
  int get hashCode => money.hashCode ^ id.hashCode;

  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}

// mixin
mixin BankMixin {
  void sayBankHello();

  void calculateMoney(int money) {
    print("Your money: $money");
  }
}
