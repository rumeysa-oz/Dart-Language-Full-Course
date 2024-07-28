void main(List<String> args) {
  final int classDegree = 2;
  bool isSuccess = false;

  switch (classDegree) {
    case 1:
      print("Succussful");
      isSuccess = true;
      break;
    case 2:
      print("Good");
      isSuccess = true;
      break;
    case 3:
      print("Enough");
      isSuccess = true;
      break;
    default:
      print("Fail");
      isSuccess = false;
  }

  print("isSuccess: $isSuccess");


  String name = "John";
  //String name = "Doe";
  switch (name) {
    case "John":
    case "Doe":
      print("Brave John");
      break;
    default:
      print("Hello Guest");
  }  

  const String specialUser1 = "Alex";
  const String specialUser2 = "Bob";

  switch (name) {
    case specialUser1:
    case specialUser2:
      print("Brave John");
      break;
    default:
      print("Hello Guest");
  }  


}