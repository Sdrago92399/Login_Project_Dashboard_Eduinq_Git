<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
        }

        h1, h2 {
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        .addition {
            background-color: #d9fcd9;
        }

        .deduction {
            background-color: #ffd9d9;
        }
    </style>
</head>
<body>

    <h1>Welcome to Your Dashboard, ${user}!</h1>

    <h2>Transaction History:</h2>
    <table>
        <thead>
            <tr>
                <th>S.No</th>
                <th>Time</th>
                <th>Transaction Details</th>
            </tr>
        </thead>
        <tbody>
            ${table}
        </tbody>
    </table>

    <script>
        // Add any additional JavaScript logic if needed
    </script>

</body>
</html>
