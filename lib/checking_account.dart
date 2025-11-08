import 'package:dart_assignment2/banking_system.dart';

class CheckingAccount extends BankAccount {
  CheckingAccount(super.accountHolderName, super.accountNumber, super.balance);

  @override
  double deposit(double amount) {
    if (amount <= 0) {
      throw Exception("Amount must be greater than zero.");
    } else {
      setBalance = getBalance + amount;
      print("\$$amount deposited successfully");
      addTransaction("transaction done: \$$amount deposited");
      return getBalance;
    }
  }

  @override
  double withdraw(double amount) {
    if (amount <= 0) {
      throw Exception("Amount must be greater than zero.");
    } else {
      if (getBalance >= amount) {
        setBalance = getBalance - amount;
        print("\$$amount withdrawn successfully");
        addTransaction("transaction done: \$$amount withdrawn");
      } else {
        setBalance = getBalance - amount - 35;
        print(
          "\$$amount withdrawn successfully and \$35 applied as overdraft fee ",
        );
        addTransaction(
          "transaction done: \$$amount withdrawn and \$35 applied as overdraft fee",
        );
      }
    }
    return getBalance;
  }
}
