class Student {
    private String name;
    private int rollNo;

    public Student(String name, int rollNo) {
        this.name = name;
        this.rollNo = rollNo;
    }

    @Override
    public String toString() {
        return "Student [Name=" + name + ", RollNo=" + rollNo + "]";
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;

        if (!(obj instanceof Student))
            return false;

        Student other = (Student) obj;

        return this.rollNo == other.rollNo &&
               this.name.equals(other.name);
    }
}

public class StudentInfo {
    public static void main(String[] args) {

        Student s1 = new Student("Anita", 101);
        Student s2 = new Student("Anita", 101);

        System.out.println(s1);
        System.out.println(s1.equals(s2));
    }
}

Output
Student [Name=Anita, RollNo=101]
true
