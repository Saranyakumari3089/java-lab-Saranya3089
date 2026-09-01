import java.awt.*;

public class StudentRegistrationForm extends Frame {

    StudentRegistrationForm() {
        setTitle("Student Registration Form");

        setLayout(new GridLayout(5, 2, 10, 10));

        add(new Label("Name:"));
        add(new TextField());

        add(new Label("Roll Number:"));
        add(new TextField());

        add(new Label("Class:"));
        add(new TextField());

        add(new Label("Email:"));
        add(new TextField());

        add(new Label(""));
        add(new Button("Register"));

        setSize(350, 250);
        setVisible(true);
    }

    public static void main(String[] args) {
        new StudentRegistrationForm();
    }
}


GUI Output
┌────────────────────────────────────┐
│     Student Registration Form      │
│                                    │
│ Name:        [______________]      │
│ Roll Number: [______________]      │
│ Class:       [______________]      │
│ Email:       [______________]      │
│              [ Register ]          │
│                                    │
└────────────────────────────────────┘


