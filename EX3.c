import java.io.FileWriter;
import java.io.IOException;

public class CustomerDataFileHandling {
    public static void main(String[] args) {
        String fileName = "customer.txt";

        try (FileWriter writer = new FileWriter(fileName)) {
            writer.write("Customer ID : 89\n");
            writer.write("Name : "saranya"\n");
            writer.write("Address : 12 MG Road, Pune\n");
            writer.write("Phone : 9876543210\n");

            System.out.println(
                "Customer data written to " + fileName
                + " successfully."
            );

        } catch (IOException e) {
            System.out.println(
                "An error occurred while writing to the file."
            );
            e.printStackTrace();
        }
    }
}

Console Output
Customer data written to customer.txt successfully.

Contents of customer.txt
Customer ID : 89
Name : saranya
Address : 12 MG Road, Pune
Phone : 9876543210
