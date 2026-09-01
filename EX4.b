import java.io.*;

public class CopyFile {
    public static void main(String[] args) {

        try (
            BufferedReader br =
                new BufferedReader(new FileReader("source.txt"));

            BufferedWriter bw =
                new BufferedWriter(new FileWriter("destination.txt"))
        ) {
            String line;

            while ((line = br.readLine()) != null) {
                bw.write(line);
                bw.newLine();
            }

            System.out.println("File copied successfully!");

        } catch (IOException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}

source.txt

Hello World
Welcome to Java

Output
File copied successfully!

destination.txt after running
Hello World
Welcome to Java
