void main(List<String> args) {
  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = dataAddBankMoney(3, 100);
  bankMoneys.listen((event) {
    print(event);
  });
}

Stream<int> dataAddBankMoney(int retryCount, int money)async*{
  int _localRetry = 0;

  await Future.delayed(Duration(seconds: 1));

  while(_localRetry < retryCount){
    _localRetry++;
    yield money += 5;
  }
}
