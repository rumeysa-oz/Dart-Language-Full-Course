void main(List<String> args) {
  List<int> moneys = [100, 200, 300, 400, 500];

  print('money of user 1: ${moneys[0]}');

  moneys.sort();
  moneys.add(60);
  moneys.insert(2, 1000);
  print(moneys);

  //
  List<int> moneys2 = [100, 200, 300, 400, 500];

  moneys2.add(5);
  moneys2.clear();
  print(moneys2);

  //
  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  print(customerMoney);

  //
  List<int> moneyCustomerNews = [100, 30, 40, 60, -5];
  moneyCustomerNews.reversed.forEach((element) {});

  for (int index = 0; index < moneyCustomerNews.length; index += 1) {
    print('money of customer: ${moneyCustomerNews[index]}');
    if (moneyCustomerNews[index] > 35) {
      print('Credit is ok');
    } else if (moneyCustomerNews[index] > 0) {
      print('Credit is not ok');
    } else {
      print('Bye Bye');
    }
  }

  //
  List<String> names = ['Ali', 'Veli', 'Ayşe', 'Sezgin'];

  names.contains("Sezgin");

  for (var item in names){
    if(item == "Sezgin"){
      print('Hello ${item}');
    }
  }
}
