import java.util.function.BiFunction;

public class SalaryBonus {
    public static void main(String[] args) {

        // Lambda expression to calculate bonus
        // as a percentage of basic salary
        BiFunction<Double, Double, Double> calculateBonus =
            (basicSalary, percentage) ->
                basicSalary * (percentage / 100);

        double basicSalary = 40000.0;
        double bonusPercentage = 10.0;

        double bonus = calculateBonus.apply(
            basicSalary,
            bonusPercentage
        );

        double totalSalary = basicSalary + bonus;

        System.out.println("Basic Salary: " + basicSalary);
        System.out.println("Bonus: " + bonus);
        System.out.println(
            "Total Salary (with bonus): " + totalSalary
        );
    }
}

Output
Basic Salary: 40000.0
Bonus: 4000.0
Total Salary (with bonus): 44000.0
