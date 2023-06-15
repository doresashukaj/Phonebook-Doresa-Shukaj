<?php
session_start();
$db = new mysqli("localhost", "root", "", "task");

if($db ->connect_error){
    die("Connection failed: " .$db->connect_error);
}
$login_error=false;
if(isset($_POST['login'])){
    $user = mysqli_real_escape_string($db, $_POST['username']);
    $pass = mysqli_real_escape_string($db, $_POST['password']);
    $sql = mysqli_query($db, "SELECT * FROM `users` WHERE `username` ='$user' ");
    $row = mysqli_fetch_array($sql, MYSQLI_ASSOC);
    if($sql->num_rows>0){
        if(password_verify($pass, $row['password'])){
            $_SESSION['login_user']=$row['username'];
            $_SESSION['user_id']=$row['id'];
            header("location:index.php");
        }else{
            echo "<script>alert('Wrong username or password');</script>";

        }
    }else{
        echo "<script>alert('Wrong username or password');</script>";
    }

        }
        if(isset($_SESSION['login_user'])){
            if(isset($_POST['contact'])){
                $user = mysqli_real_escape_string($db, $_SESSION['user_id']);
                $user_publish = mysqli_real_escape_string($db,(isset($_POST['check_publish']))? 1 : 0);
                $first_name =mysqli_real_escape_string($db, $_POST['firstname']);
                $last_name=mysqli_real_escape_string($db, $_POST['lastname']);
                $address =mysqli_real_escape_string($db, $_POST['address']);
                $zipcity= mysqli_real_escape_string($db, $_POST['zipcity']);
                $country = mysqli_real_escape_string($db, $_POST['country']);

                $phones = $_POST['phone'];
      $phone_arr = array();
      foreach ($phones as $key=>$val){
         $phone = mysqli_real_escape_string($db,$_POST['phone'][$key]);
         $check_phone = mysqli_real_escape_string($db,$_POST['hidden_phone_check'][$key]);
         $phone_arr[$key] = array("('" . $user . "'", "'" . $phone . "'", "'" . $check_phone . "')");
                };
                $phone_merge =implode(",", call_user_func_array('array_merge', $phone_arr));
                $phone_data = stripslashes(mysqli_real_escape_string($db, $phone_merge));

                $emails = $_POST['email'];
                $email_arr = array();
                foreach($emails as $key=>$val){
                    $email=mysqli_real_escape_string($db,$_POST['email'][$key]);
                    $check_email=mysqli_real_escape_string($db, $_POST['hidden_email_check'][$key]);
                    $email_arr[$key]=array("('".$user ."'" , "'" .$email ."'" , "'" .$check_email . "')" );

                };
                $email_merge=implode(", ", call_user_func_array('array_merge', $email_arr));
                $email_data =stripslashes(mysqli_real_escape_string($db, $email_merge));
           
                mysqli_query($db,"BEGIN");
      $sql = mysqli_query($db,"UPDATE `users` SET `publish` = '$user_publish', `first_name` = '$first_name', `last_name` = '$last_name', `address` = '$address', `zipcity` = '$zipcity', `country` = '$country' WHERE `id` = '$user'");
      $sql2 = mysqli_query($db,"DELETE FROM `user_phones` WHERE `user_id` = '$user'");
      $sql3 = mysqli_query($db,"INSERT INTO `user_phones`(`user_id`, `phone_number`, `publish`) VALUES ".$phone_data."");
      $sql4 = mysqli_query($db,"DELETE FROM `user_emails` WHERE `user_id` = '$user'");
      $sql5 = mysqli_query($db,"INSERT INTO `user_emails`(`user_id`, `email`, `publish`) VALUES ".$email_data."");
                
                if($sql && $sql2 && $sql3 && $sql4 && $sql5){
                }else{
                    mysqli_query($db, "ROLLBACK");
                    echo"<script>alert('A mistake has happened!');</script>";

                         }
                     }
                 }
                if(isset($_POST['logout'])){
                    if(session_destroy()){
                        header("location:index.php");
                    }
                }

?>
<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <title>Phonebook</title>
   <style type="text/css">
      * {
         -webkit-box-sizing: border-box;
         box-sizing: border-box;
         font-family: Arial, sans-serif;
      }
      html, body {
         margin: 0;
      }

      body {
         padding: 1em;
      }

      .main {
         width: 100%;
         margin-bottom: 1em;
      }

      .main h1 {
         text-align: center;
         font-weight: normal;
         color: #9a4747;
      }

      .main__buttons {
         display: flex;
         margin: 0 2em;
      }

      .main__buttons button {
         border: solid #000;
         border-width: 1px 2px 2px 1px;
         border-radius: 12px;
         padding: 0.35em 0.7em;
         background: #d5d4d4;
         cursor: pointer;
      }

      .window {
         min-width: 100%;
         min-height: 450px;
         border: 1px solid #000;
         padding-bottom: 2em;
      }
   </style>
</head>
<body>
    <section class="main">
        <h1>Phonebook</h1>
        <div class="main__buttons">
            <?php 
            if(isset($_SESSION['login_user'])){
                ?>
                <form method="POST" action="">
                    <button type="submit" name="logout" id="logout--button">
                        Logout
                    </button>
                </form>
                <button id="publicphonebook--button">
                    Public Phonebook
                </button>
                <button id="mycontact--button">
                    My Contact
                </button>
                <?php
            }else{
                ?>
                <button id="login--button">
                    Login
                </button>
                <button id="publicphonebook--button">
                    Public Phonebook
                </button>
                <?php
            }   
                ?>
            </div>
    </section>
    <div class="window">

    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    <script type="text/javascript" >
        $(function(){
            $("#login--button").click(function(){
                $.ajax({url: "login.php", success:function(result){
                        $(".window").html(result);

                }});
            });

            $("#publicphonebook--button").click(function(){
                $.ajax({url: "phonebook.php", success:function(result){
                    $(".window").html(result);

                }});
            });
            $(document).on("click", "#mycontact--button", function(){
                $.ajax({url:"contact.php", success:function(result){
                    $(".window").html(result);
                }});
            
            });
            $(document).on("click", ".phonebook--details", function(){

                let elem =$(this);
                let id =$(this).data("id");
                if($(".contact__details")&& $(".contact__details").data("id") == id){
                    $(".contact__details[data-id='" + id + "']").remove();
                    elem.html("show details");

                }else{
                    let parent=$(this).parent();
                    $.ajax({url:"phonebook.php?id=" + id, success: function(result){
                        elem.html("hide details");
                        $(result).insertAfter(parent);
                    }});
                }
            });
                $(document).on("click", ".add_phone_row", function(){
                    $('<div class="phone__input"><input type="text" class="phone" name="phone[]"><input type="hidden" class="hidden-check" name="hidden_phone_check[]"><input type=checkbox" name="check_phone[]" class="phone--checkbox"></div>').insertBefore(".add_phone_row");

                });
                $(document).on("click", ".add_email_row", function(){
            $('<div class="email__input"><input type="email" class="email" name="email[]"><input type="hidden" class="hidden-check" name="hidden_email_check[]"><input type="checkbox" name="check_email[]" class="email--checkbox"></div>').insertBefore(".add_email_row");
         });

         $(document).on("click", ".phone--checkbox", function(){
            let value = ($(this).is(':checked')) ? "1" : "0";
            $(this).siblings(".hidden-check").val(value);
         });

         $(document).on("click", ".email--checkbox", function(){
            let value = ($(this).is(':checked')) ? "1" : "0";
            $(this).siblings(".hidden-check").val(value);
         });
                
        });


    </script>
</body>
</html>
