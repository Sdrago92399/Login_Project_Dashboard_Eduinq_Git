package Wallet_History;




import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.HashMap;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInitializer extends HttpServlet {

    private static final long serialVersionUID = 6L;

    private Jdbc mysql = new Jdbc();
    private Methods Do = new Methods();
    private Mail sendMail = new Mail();

    private PrintWriter out = null;
    private HashMap<String, ResultSet> dataBank = new HashMap<>();
    private ResultSet userResultset = null;
    private ResultSet walletResultset = null;

    private String user;
    private String mail;
    private String phone;
    private String comp;
    private String reqId;

    private boolean tableExists;

    @Override
    public void init() {
        mysql.jdbcInit();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        // No implementation for doGet method
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        try {
            dataBank = runDB();

            userResultset = dataBank.get("user");
            while (userResultset.next()) {
                user = userResultset.getString("user");
                mail = userResultset.getString("mail");
                comp = userResultset.getString("comp");
                phone = userResultset.getString("phone");
                reqId = userResultset.getString("reqId");
            }

            String table = buildTransactionTable();
            
            req = Do.setAttribute(mail, comp, user, null, phone, reqId, table, req);
            Do.showAlert(req, resp, "dashboard.jsp", "login");

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("An error occurred");
            mysql.log(e.getClass().getName(), e.getMessage() + Do.getMethodName(e.getStackTrace()));
            Do.showAlert(req, resp, "login.jsp", "error");
        }
    }

    private String buildTransactionTable() throws SQLException {
        walletResultset = dataBank.get("wallet");
        StringBuilder table = new StringBuilder();
        
        while (walletResultset.next()) {
            int sNo = walletResultset.getInt("sNo");
            Time time = walletResultset.getTime("time");
            float trnsc = walletResultset.getFloat("trnsc");
            String reqId = walletResultset.getString("reqId");

            String row = trnsc > 0 ?
                    "<tr class=\"addition\">\n" +
                            "    <td>" + sNo + "</td>\n" +
                            "    <td>" + time + "</td>\n" +
                            "    <td>Your wallet has been recharged with Rs. " + trnsc + " amount.</td>\n" +
                            "</tr>\n" :
                    "<tr class=\"deduction\">\n" +
                            "    <td>" + sNo + "</td>\n" +
                            "    <td>" + time + "</td>\n" +
                            "    <td>Your wallet had been deducted for Rs. " + (-trnsc) + " to see the contact details of a candidate with Eduinq ID " + reqId + "</td>\n" +
                            "</tr>\n";

            table.append(row);
        }

        return table.toString();
    }

    private HashMap<String, ResultSet> runDB() throws SQLException {
        tableExists = mysql.tableExists();

        if (tableExists) {
            System.out.println("DB already exists");

            userResultset = mysql.fetchData(user, mail);
            walletResultset = mysql.fetchTransaction(reqId);
            dataBank.put("user", userResultset);
            dataBank.put("wallet", walletResultset);
        } else {
            System.out.println("DB doesn't exist");
            mysql.createTable();
        }

        return dataBank;
    }

    @Override
    public void destroy() {
        mysql.jdbcDestroy();
    }
}
