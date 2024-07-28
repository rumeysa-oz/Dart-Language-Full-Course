void main(List<String> args) {
  String username = 'admin';

  if (username.length > 2){
    print('Hello, ${username}!');
  } else {
    throw UserNameException();
  }
}

class UserNameException implements Exception {
  @override
  String toString() {
    return 'UserNameException';
  }
}
