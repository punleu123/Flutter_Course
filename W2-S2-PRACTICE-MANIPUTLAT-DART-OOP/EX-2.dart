class BankAccount {
  int _accountId;      
  String _ownerName;
  double _balance;     

  BankAccount(this._accountId, this._ownerName, this._balance);

 
  int get accountId => _accountId;
 
  String get ownerName => _ownerName;

   double get balance => _balance;

 
  double getBalance() {
    return _balance;
  }

  void withdraw(double amount) {
    if (_balance - amount < 0) {
      throw Exception('Insufficient balance for withdrawal!');
    }
    _balance -= amount;
  }

  void credit(double amount) {
    _balance += amount;
  }
}

class Bank {
  String _name;  
  Map<int, BankAccount> _accounts = {};  // Private Map to store accounts by their unique ID

  Bank(this._name);

  String get name => _name;

  //create a new account, ensuring the account ID is unique
  BankAccount createAccount(int accountId, String accountOwner) {
    if (_accounts.containsKey(accountId)) {
      throw Exception('Account with ID $accountId already exists!');
    }

    BankAccount newAccount = BankAccount(accountId, accountOwner, 0.0);

    _accounts[accountId] = newAccount;

    return newAccount;
  }

  // retrieve an account by ID
  BankAccount getAccount(int accountId) {
    if (!_accounts.containsKey(accountId)) {
      throw Exception('Account with ID $accountId does not exist!');
    }
    return _accounts[accountId]!;//not be null
  }
}

void main() {
  Bank myBank = Bank("CADT Bank");

  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');
  print('New account created for ${ronanAccount.ownerName} with balance: \$${ronanAccount.getBalance()}'); // Balance: $0.0

  ronanAccount.credit(100);
  print('Balance after credit: \$${ronanAccount.getBalance()}'); // Balance: $100.0

  ronanAccount.withdraw(50);
  print('Balance after withdrawal: \$${ronanAccount.getBalance()}'); // Balance: $50.0

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
