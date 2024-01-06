package mail;


import java.util.Properties;
import java.util.Random;
import javax.mail.*;
import javax.mail.internet.*;

public class SendMail1 {
    private static final String SENDER_EMAIL = "ektaimec@gmail.com";
    private static final String SENDER_PASSWORD = "ztlxuuzomckeqaef";

    public static String generateOTP() {
        Random rnd = new Random();
        int number = rnd.nextInt(999999);
        return String.format("%06d", number);
    }

    public static void sendVerificationEmail(String recipientEmail, String otp) {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(SENDER_EMAIL, SENDER_PASSWORD);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(SENDER_EMAIL));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
            message.setSubject("Email Verification");
            message.setText("Your verification code is: " + otp);

            Transport.send(message);
            Transport transport = session.getTransport("smtp");
            transport.close();
            System.out.println("Verification email sent successfully!");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

   
}
