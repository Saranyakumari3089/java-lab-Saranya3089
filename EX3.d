import java.awt.*;
import java.awt.event.*;

public class LoginForm extends Frame implements ActionListener {

    TextField usernameField;
    TextField passwordField;
    Button loginButton;

    LoginForm() {
        setTitle("Login Form");
        setLayout(new FlowLayout());

        Label userLabel = new Label("Username:");
        usernameField = new TextField(15);

        Label passLabel = new Label("Password:");
        passwordField = new TextField(15);
        passwordField.setEchoChar('*');

        loginButton = new Button("Login");
        loginButton.addActionListener(this);

        add(userLabel);
        add(usernameField);
        add(passLabel);
        add(passwordField);
        add(loginButton);

        setSize(300, 200);
        setVisible(true);

        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) {
                dispose();
            }
        });
    }

    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == loginButton) {
            System.out.println(
                "Username entered: " + usernameField.getText()
            );
            System.out.println("Login button clicked.");
        }
    }

    public static void main(String[] args) {
        new LoginForm();
    }
}

GUI Output
┌──────────────────────────────┐
│          Login Form          │
│                              │
│ Username: [_____________]    │
│ Password: [*************]    │
│                              │
│          [ Login ]           │
│                              │
└──────────────────────────────┘

When  enter admin123 and click Login, the console displays:

Username entered: admin123
Login button clicked.
