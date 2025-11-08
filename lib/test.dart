import 'package:dart_assignment2/bank.dart';
import 'package:dart_assignment2/checking_account.dart';
import 'package:dart_assignment2/premium_account.dart';
import 'package:dart_assignment2/saving_account.dart';
import 'package:dart_assignment2/student_account.dart';

void main() {
  Bank bank = Bank();

  SavingAccount savingacc1 = SavingAccount("Aruna", 1001001, 2000.0);
  CheckingAccount checkingAcc1 = CheckingAccount('Deepa', 2001001, 2200.0);
  PremiumAccount premiumAcc1 = PremiumAccount('Unika', 3001001, 15000.0);
  StudentAccount studentAcc1 = StudentAccount("Ram", 4001001, 1200);

  bank.createNewAcc(savingacc1);
  bank.createNewAcc(checkingAcc1);
  bank.createNewAcc(premiumAcc1);
  bank.createNewAcc(studentAcc1);

  savingacc1.deposit(300.0);
  savingacc1.withdraw(100.0);
  savingacc1.withdraw(100.0);
  savingacc1.withdraw(100.0);
  savingacc1.withdraw(50.0);

  checkingAcc1.withdraw(300.0);
  checkingAcc1.deposit(500.0);

  premiumAcc1.withdraw(6000.0);
  premiumAcc1.withdraw(5000.0);

  studentAcc1.deposit(4900);

  bank.transfer(3001001, 2001001, 2000.0);

  bank.transfer(1001001, 3001001, 1500.0);

  bank.generateReport();

  bank.applyInterest();

  savingacc1.showTransactionHistory();
  checkingAcc1.showTransactionHistory();
  premiumAcc1.showTransactionHistory();
}
