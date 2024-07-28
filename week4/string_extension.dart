void main(List<String> args) {
  if ('admin'.isAdmin()) {
    print('Admin is selected');
  }

  String? name;
  name.isAdmin2();
}

//
extension StringUserCheckExtension on String {
  bool isAdmin() {
    return this.toLowerCase() == 'admin'.toLowerCase();
  }
}

//
extension StringUserCheckExtension2 on String? {
  bool isAdmin2() {
    return (this ?? '').toLowerCase() == 'admin'.toLowerCase();
  }
}
