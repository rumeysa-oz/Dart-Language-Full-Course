void main(List<String> args) {
  Iuser user = Turk();
  user.sayName();
  user = English();
  user.sayName();
}

abstract class Iuser {
  final String name;

  Iuser(this.name);
  void sayName();
}

class Turk implements Iuser {
  @override
  String get name => 'Ali';

  @override
  void sayName() {
    print('Merhaba hosgeldiniz ${name}');
    print('Karnin ac mi?');
  }
}

class English implements Iuser {
  @override
  String get name => 'Jane';

  @override
  void sayName() {
    print('Hello ${name}');
    print('Lets\'s meet our friends in Oxford!');
  }
}

class German {
  @override
  // ignore: override_on_non_overriding_member
  String get name => 'Hans';

  @override
  // ignore: override_on_non_overriding_member
  void sayName() {
    print('Hallo ${name}');
  }
}
