import 'package:dart_assignment2/banking_system.dart';

class CheckingAccount extends BankAccount {
  CheckingAccount(super.accountHolderName, super.accountNumber, super.balance);

  @override
  double deposit(double amount) {
    setBalance = getBalance + amount;
    print("\$$amount deposited successfully");
    return getBalance;
  }

  @override
  double withdraw(double amount) {
    setBalance = getBalance - amount;
    if (getBalance < 0) {
      setBalance = getBalance - 35;
      print("\$35 applied as overdraft fee ");
    }
    print("\$$amount withdrawn successfully");
    return getBalance;
  }
}
