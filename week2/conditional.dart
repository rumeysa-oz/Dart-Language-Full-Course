void main(List<String> args) {
  int newCustomerMoney = 1000;
  const int bankingCost = 500;
  const int bankingCostGeneral = 200;

  if (newCustomerMoney > bankingCost) {
    print("Banking cost is $bankingCost");
  } else if (newCustomerMoney > bankingCostGeneral) {
    print("Banking cost is $bankingCostGeneral");
  } else {
    print("Banking cost is $bankingCostGeneral");
  }

  final String company1 = "Google";
  final String company2 = "Facebook";
  final String company3 = "Apple";
  final String company4 = "IM";
  final String company5 = "X";

  const int companyLength = 2;
  String results = "";

  if (company1.length > companyLength) {
    results += company1 + " ";
  }
  if (company2.length > companyLength) {
    results +=  company2 + " ";
  }
  if (company3.length > companyLength) {
    results +=  company3 + " ";
  }
  if (company4.length > companyLength) {
    results +=  company4 + " ";
  }
  if (company5.length > companyLength) {
    results +=  company5 + " ";
  }

  print(results);
  
}
