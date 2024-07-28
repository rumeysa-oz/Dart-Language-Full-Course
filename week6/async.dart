Future<void> main(List<String> args) async {
  print('a');

  await Future.delayed(Duration(seconds: 2));
  print('b');

  //
  await Future.forEach([1, 2, 3, 4, 5, 6], (int element) async {
    await Future.delayed(Duration(seconds: 3));
  });
  print('c');

  //
  print('hello');
  Future.delayed(Duration(seconds: 0)).whenComplete((){
    print('hello2');
  });
  print('hello3');
  Future.delayed(Duration(seconds: 0)).whenComplete((){
    print('hello4');
  });

  //
  print('hello');
  Future.delayed(Duration(seconds: 2)).whenComplete((){
    print('hello2');
  });
  print('hello3');
  Future.delayed(Duration(seconds: 1)).whenComplete((){
    print('hello4');
  });
}
