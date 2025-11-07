import 'package:dart_assignment2/banking_system.dart';

class SavingAccount extends BankAccount implements InterestBearing {
  double minimumBalance = 500;
  double interest = 0.02;
  int withdrawalLimit = 3;
  int withdrawalcount = 0;

  SavingAccount(super.accountHolderName, super.accountNumber, super.balance);

  @override
  double deposit(double amount) {
    setBalance = getBalance + amount;
    print("\$$amount deposited successfully");
    return getBalance;
  }

  @override
  double withdraw(double amount) {
    if (withdrawalLimit > withdrawalcount) {
      if (getBalance < amount || getBalance - amount < minimumBalance) {
        print("Insufficient amount");
      } else {
        setBalance = getBalance - amount;
        print("\$$amount withdrawn successfully");
        withdrawalcount += 1;
      }
    } else {
      print("Withdrawal limit crossed");
    }
    return getBalance;
  }

  @override
  double calculateInterest() {
    interest = 0.02 * getBalance;
    return interest;
  }
}
