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
    if (getBalance >= amount) {
      setBalance = getBalance - amount;
      print("\$$amount withdrawn successfully");
    } else {
      setBalance = getBalance - amount - 35;
      print("\$$amount withdrawn successfully and \$35 applied as overdraft fee ");
    }
    return getBalance;
  }
}
