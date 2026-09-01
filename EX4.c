import javax.swing.*;
import java.awt.*;

public class StudentRegistrationForm extends JFrame {

    JTextField nameField;
    JTextField rollField;
    JButton submitButton;

    StudentRegistrationForm() {
        setTitle("Student Registration Form");
        setLayout(new GridLayout(3, 2, 10, 10));

        add(new JLabel("Name:"));
        nameField = new JTextField();
        add(nameField);

        add(new JLabel("Roll Number:"));
        rollField = new JTextField();
        add(rollField);

        submitButton = new JButton("Submit");
        add(submitButton);

        submitButton.addActionListener(e ->
            JOptionPane.showMessageDialog(
                this,
                "Registered: " + nameField.getText()
                + ", Roll No: " + rollField.getText()
            )
        );

        setSize(300, 150);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setVisible(true);
    }

    public static void main(String[] args) {
        new StudentRegistrationForm();
    }
}

GUI Output
┌────────────────────────────────┐
│ Student Registration Form      │
├────────────────────────────────┤
│ Name:        [ Anita        ]  │
│ Roll Number: [ 23           ]  │
│              [   Submit     ]  │
└────────────────────────────────┘

After clicking Submit, a dialog box appears:

┌─────────────────────────────────┐
│ Registered: Anita, Roll No: 23 │
│                         [ OK ] │
└─────────────────────────────────┘
