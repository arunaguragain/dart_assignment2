import 'package:dart_assignment2/banking_system.dart';

class SavingAccount extends BankAccount implements InterestBearing {
  final double minimumBalance = 500;
  final double interestRate = 0.02;
  final int withdrawalLimit = 3;
  int _withdrawalcount = 0;

  SavingAccount(super.accountHolderName, super.accountNumber, super.balance);

  @override
  double deposit(double amount) {
    setBalance = getBalance + amount;
    print("\$$amount deposited successfully");
    return getBalance;
  }

  @override
  double withdraw(double amount) {
    if (withdrawalLimit > _withdrawalcount) {
      if (getBalance < amount || getBalance - amount < minimumBalance) {
        print("Insufficient amount");
      } else {
        setBalance = getBalance - amount;
        print("\$$amount withdrawn successfully");
        _withdrawalcount += 1;
      }
    } else {
      print("Withdrawal limit crossed");
    }
    return getBalance;
  }

  @override
  double calculateInterest() {
    double interest = (0.02 * getBalance) / 12 ;
    return interest;
  }
}
