void main(List<String> args) {
  controlUserMoney();

  final int userMoney = 5;
  controlUserMoney2(userMoney);

  controlUserMoney3(10, 5);

  final newUserMoney = 50;
  print(newUserMoney / 13);

  int result = convertToDolar(newUserMoney);
  print(result);
  if (result > 0) {}

  final newResult = convertToStandartDolar2(100, dolarIndex: 13);
  print("newResult: $newResult");
  final newResult2 = convertToStandartDolar2(100);
  print("newResult2: $newResult2");

  final newResult3 = convertToEuro(userMoney: 300);
  print("newResult3: $newResult3");
}

// no parameter
void controlUserMoney() {
  int userMoney = 0;

  if (userMoney > 0) {
    print("User has money: $userMoney");
  } else {
    print("User has no money");
  }
}

// One parameter
void controlUserMoney2(int money) {
  if (money > 0) {
    print("User has money: $money");
  } else {
    print("User has no money");
  }
}

// Multiple parameters
void controlUserMoney3(int money, int minValue) {
  if (money > minValue) {
    print("User has money: $money");
  } else {
    print("User has no money");
  }
}

//
int convertToDolar(int userMoney) {
  return userMoney ~/ 13;
}

//
int convertToStandartDolar2(int userMoney, {int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}

//
int convertToEuro({required int userMoney, int dolarIndex = 15}) {
  return userMoney ~/ dolarIndex;
}


