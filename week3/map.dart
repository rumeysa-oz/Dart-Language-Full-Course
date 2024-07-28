void main(List<String> args) {
  Map<String, int> myMap = {"Ali": 10, "Veli": 20, "Ayşe": 30};
  print(myMap);
  print("Veli: ${myMap["Veli"]}"); // Veli: 20

  for (var item in myMap.keys) {
    //print(item);
    print("${item} - ${myMap[item]}");
  }

  for (var i = 0; i < myMap.length; i++) {
    print("${myMap.keys.elementAt(i)} / ${myMap.values.elementAt(i)}");
  }

  //
  Map<String, List<int>> vbBank = {
    "Ali": [100, 300, 200],
    "Veli": [30, 50],
    "Ayşe": [30]
  };
  print(vbBank);

  for (var item in vbBank.keys) {
    for (var money in vbBank[item]!) {
      if (money > 150) {
        print("Credit is over 150");
        break;
      }
    }
  }

  for (var name in vbBank.keys) {
    int total = 0;
    for (var money in vbBank[name]!) {
      total += money;
    }
    print("${name}'s total money = $total");
  }
}
