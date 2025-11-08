import 'package:dart_assignment2/banking_system.dart';

List<BankAccount> bankAccounts = [];

class Bank {
  void createNewAcc(BankAccount account) {
    bankAccounts.add(account);
    print("Account created for ${account.getAccountHolderName}");
  }

  BankAccount? findAccount(int accountNumber) {
    for (BankAccount account in bankAccounts) {
      if (account.getAccountNumber == accountNumber) {
        return account;
      }
    }
    print("Account not found");
    return null;
  }

  void transfer(int senderAccount, int receiverAccount, double amount) {
    BankAccount? sender = findAccount(senderAccount);
    BankAccount? receiver = findAccount(receiverAccount);

    if (sender == null && receiver == null) {
      print("Transfer failed: account not found");
      return;
    }

    double senderOldBalance = sender!.getBalance;
    sender.withdraw(amount);

    if (sender.getBalance < senderOldBalance) {
      receiver!.deposit(amount);
      print("\$$amount transferred sucessfully");
      sender.addTransaction("transaction done:\$$amount transferred sucessfully ");
      receiver.addTransaction("transaction done:\$$amount deposited sucessfully ");
    } else {
      print("Insufficient fund");
      sender.addTransaction("transaction failed: insufficient fund");
    }
  }

  void generateReport() {
    print("Account Report");
    for (BankAccount account in bankAccounts) {
      account.displayAccountInfo();
      if (account is InterestBearing) {
        print(
          "Interest acquired: \$${(account as InterestBearing).calculateInterest()}",
        );
      }
    }
  }

  void applyInterest() {
    for (BankAccount account in bankAccounts) {
      if (account is InterestBearing) {
        double interest = (account as InterestBearing).calculateInterest();
        account.setBalance = account.getBalance + interest;
        print(
          "\$$interest is acquired as interest and balance is \$ ${account.getBalance}",
        );
        account.addTransaction("transaction done: \$$interest deposited");
      }
    }
  }
}
