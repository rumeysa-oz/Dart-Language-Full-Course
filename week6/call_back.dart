// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  //1
  final user = User(money: 5);
  user.CalculateMoney((int result) {
    print(user.money);
    return result +5;
  });
}

// 1. call back
class User {
  int money;
  User({
    required this.money,
  });

  void CalculateMoney(int Function(int data) onComplete) {
    money += 5;
    final passData = onComplete(money);
    print(passData);
  }
}

// typedef usage: call back
typedef CalculateCallBack = int Function(int data);
class User2 {
  int money;
  User2({
    required this.money,
  });

  void CalculateMoney(CalculateCallBack onComplete) {
    money += 5;
    final passData = onComplete(money);
    print(passData);
  }
}



