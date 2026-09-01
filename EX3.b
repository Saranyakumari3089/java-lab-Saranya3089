import java.util.ArrayList;

public class StudentRecordManagement {
    public static void main(String[] args) {
        ArrayList<String> studentNames = new ArrayList<>();

        studentNames.add("Amit Sharma");
        studentNames.add("Priya Verma");
        studentNames.add("Rahul Singh");
        studentNames.add("Sneha Patel");

        System.out.println("List of Students:");

        for (String name : studentNames) {
            System.out.println(name);
        }

        System.out.println("\nTotal number of students: "
                + studentNames.size());
    }
}

Output
List of Students:
Amit Sharma
Priya Verma
Rahul Singh
Sneha Patel

Total number of students: 4
