class InsufficientBalanceException extends Exception {
    public InsufficientBalanceException(String message) {
        super(message);
    }
}

class Account {
    private double balance;

    public Account(double balance) {
        this.balance = balance;
    }

    public void withdraw(double amount) throws InsufficientBalanceException {
        if (amount > balance) {
            throw new InsufficientBalanceException(
                "Insufficient balance for withdrawal of " + amount
            );
        }

        balance -= amount;

        System.out.println(
            "Withdrawal successful. Remaining balance: " + balance
        );
    }
}

public class ATMWithdrawal {
    public static void main(String[] args) {
        Account acc = new Account(5000.0);

        try {
            acc.withdraw(7000.0);
        } catch (InsufficientBalanceException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
