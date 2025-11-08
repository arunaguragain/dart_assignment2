import 'package:dart_assignment2/banking_system.dart';

List<BankAccount> bankAccounts = [];

class Bank {
  void createNewAcc(BankAccount account) {
    bankAccounts.add(account);
    print("Account created for ${account.getAccountHolderName}");
  }

  BankAccount? findAccount(int accountNumber) {
    for (var account in bankAccounts) {
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

    if (sender == null || receiver == null) {
      print("Transfer failed: account not found");
    }

    double senderOldBalance = sender!.getBalance;
    sender.withdraw(amount);

    if (sender.getBalance < senderOldBalance) {
      receiver!.deposit(amount);
      print("\$$amount transferred sucessfully");
    } else {
      print("Insufficient fund");
    }
  }

  void generateReport() {
  print("Account Report");
  for (var account in bankAccounts) {
    account.displayAccountInfo();

    if (account is InterestBearing) {
      print("Interest: \$${(account as InterestBearing).calculateInterest()}");
    } 
  }
}

}
