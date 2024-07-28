void main(List<String> args) {
  final customerMouse = Mouses.Logitech;
  print(customerMouse.index);
  print(customerMouse.name);

  if (customerMouse == Mouses.Logitech) {}
  if (customerMouse.name == 'Logitech') {}
  if (customerMouse.isCheckName('Logitech')) {
    print('Logitech is selected');
  }
}

enum Mouses {
  Logitech,
  Corsair,
  SteelSeries,
  Razer,
}

extension MouseSelectedExtension on Mouses {
  bool isCheckName(String name) {
    return this.name == name;
  }
}
