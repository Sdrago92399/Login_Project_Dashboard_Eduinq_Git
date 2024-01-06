<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>Wallet Recharge | CodingLab</title>
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">

    </style>
    <link rel="stylesheet" href="all_component/login.css">
</head>

<body>

<div class="container">
    <div class="title">Wallet Recharge</div>
    <div class="content">
        <form action="RechargeServlet" method="post">
            <div class="user-details">
                <div class="input-box">
                    <span class="details">User ID</span>
                    <input type="text" name="Card No" placeholder="Enter your Card No" required>
                </div>
                <div class="input-box">
                    <span class="details">Amount</span>
                    <input type="text" name="amount" placeholder="Enter recharge amount" required>
                </div>
            </div>

            <div class="button">
                <input type="submit" value="PayNow">
            </div>
        </form>
    </div>
</div>

</body>
</html>
