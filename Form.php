<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<title>Form</title>
</head>
<body>
    
    <?php
         if ($_SERVER['REQUEST_METHOD'] == 'POST'){
            $name = $_POST['name'];
            $email = $_POST['email'];
            $comment = $_POST['comment'];

        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "form";
        
        $conn = mysqli_connect($servername, $username, $password, $dbname);
        
        if (!$conn) {
            die("Connection failed".mysqli_connect_error());
        } 
        
       
            $sql = "INSERT INTO `input_form` (`ID`, `Name`, `Email`, `Comment`) VALUES (NULL, '$name', '$email', '$comment')";
            //$sql = "UPDATE `form` SET `Name` = 'Anil Behera' ,`Email` = 'admin@gmail.com' WHERE `form`.`id` = 1";

            $result = mysqli_query($conn, $sql);

            if($result){
                echo '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>Success!</strong>  Your entry has been submitted successfully!
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                      </div>';
            }
            else {
                echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>Error!</strong> 
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">×</span>
                </button>
            </div>';
            }
        
    }
    ?>
    
    <div class="container">
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
            <div class="mb-3">
            <label for="name"  class="form-label">Name</label>
            <input type="text" name="name" class="form-control" id="name" placeholder="enter name " required>
            </div>
            <div class="mb-3">
            <label for="email"  class="form-label">Email address</label>
            <input type="email" name="email" class="form-control" id="email" placeholder="name@example.com" required>
            </div>
            <div class="mb-3">
            <label for="comment"  class="form-label">Comment</label>
            <textarea class="form-control" id="comment" name="comment" rows="3" required></textarea>
            </div>
            <button type="submit" name="submit" class="btn btn-primary">submit</button>
        </form>
    </div>   
</body>
</html>
