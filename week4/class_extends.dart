void main() {
  final userNormal = User("John", 1000);
  userNormal.sayMoneyWithCompanyName();

  final userBank = BankUser("Alice", 5000, 123);
  userBank.sayMoneyWithCompanyName();

  final userSpecial = SpecialUser("Bob", 10000, 12378, 40);
  userSpecial.sayMoneyWithCompanyName();

  print(userSpecial.calculateMoney);

  print(userSpecial.money);
}

// Abstract class
abstract class IUser{
  final String name;
  final int money;

  IUser(this.name, this.money);
  void sayMoneyWithCompanyName(){
    print("Your Money: $money TL");
  }
}

class User extends IUser {
  final String name;
  final int money;

  User(this.name, this.money) : super(name, money);
}

class BankUser extends IUser {
  final int bankCode;

  BankUser(String name, int money, this.bankCode) : super(name, money);

  void bankSpecialLogic(){
    print(money);
  }
}

class SpecialUser extends IUser {
  final String name;
  final int money;
  final int bankCode;
  late final int _discount;

  SpecialUser(this.name, this.money, this.bankCode, int discount) : super(name, money) {
    _discount = discount;
  }

  int get calculateMoney => money - (money ~/ _discount);
}

