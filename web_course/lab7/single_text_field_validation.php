<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Validation</title>

</head>

<body>

    <?php
    echo "<p> Hey amigo</p>";
    ?>

    <h2>PHP Form Validation Example</h2>

    <!-- text field validation  -->
    <?php
    $nameErr = "";
    $name = "";

    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        $name = $_POST["name"];
        if (empty($_POST["name"])) {
            $nameErr = "Name is required";
        } else {
            $name = test_input($_POST["name"]);
        }
    }


    function test_input($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    ?>

    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <label for="name"> First name</label><br>
        <input type="text" id="name" name="name"><br>
        <div style="height: 100px;">&nbsp;</div>
        <input type="submit" name="submit" value="Submit">

    </form>

    <?php
    echo "<p> $name </p>";
    ?>
</body>

</html>