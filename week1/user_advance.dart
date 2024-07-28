void main(List<String> args) {
  final String userName = "John";
  final int bankmoney = 1000;
  const String bankName = "HDFC";

  String userName1 = "John";
  int bankmoney1 = 1000;

  var userName2 = "John";
  var bankmoney2 = 1000;

  print("Hello ${userName} with ${bankmoney} in ${bankName}");

  print("Hello ${userName1} with ${bankmoney1} in ${bankName}");

  print("Hello ${userName2} with ${bankmoney2} in ${bankName}");

  //

  const String bankNameSpecial = "HDFC";
  final String user1 = "Bank 1 Customer";
  const double user1Money = 1000.0;

  final String user2 = "Bank 2 Customer";
  int user2Money = 700;

  print(user1 + " has $user1Money in ${bankNameSpecial}");
  print(user2 + " has $user2Money in ${bankNameSpecial}");
  

  user2Money = user2Money - user1Money.toInt();
  print("User 2 has $user2Money");

  //
  final int capasity = 100;
  int customer1 = 20;
  int customer2 = 50;
  int sum = customer1 + customer2;
  print("Total customer is $sum");
  print("The remaining capacity is" + ' ${capasity - sum}');
}
