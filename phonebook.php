<?php
$db = new mysqli("localhost", "root", "", "task");
if(isset($_GET['id'])){
    $id= mysqli_real_escape_string($db, $_GET['id']);
$result = mysqli_query($db, "SELECT `address` ,`zipcity`,`country` FROM `users` WHERE `id`=$id") or die(mysql_error());
$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
$country = $row['country'];
$result2 = mysqli_query($db, "SELECT `code` FROM `countries` WHERE `id` =$country") or die(mysql_error());
$row2 = mysqli_fetch_array($result2, MYSQLI_ASSOC);
$result3 =mysqli_query($db, "SELECT `phone_number` FROM `user_phones` WHERE `user_id` =$id AND `publish` =1" )or die(mysql_error());
$result4 = mysqli_query($db, "SELECT `email` FROM `user_emails` WHERE `user_id` =$id AND `publish` =1" ) or die(mysql_error())
?>


<div class="contact__details" data-id="<?php echo $id; ?>">
    <div class="contact--column">
        <h4>Address</h4>
    <div class="contact__rows">
        <p><?php echo $row['address'];?></p>
        <p><?php echo $row['zipcity'];?></p>
        <p><?php echo $row2['code'];?></p>

</div>
</div>
<div class="contact--column">
    <h4>Phone Numbers</h4>
    <div class="contact__rows">

    <?php 
    while($row3 =mysqli_fetch_array($result3,MYSQLI_ASSOC)){
        echo "<p>".$row3['phone_number'] . "</p>";
}
?>
    </div>
</div>
<div class="contact--column ">
    <h4>Emails</h4>
    <div class="contact__rows">
        <?php
        while($row4 = mysqli_fetch_array($result4, MYSQLI_ASSOC)){
            echo "<p>".$row4['email']."</p>";

        }
        ?>
    </div>
</div>
</div>
<?php
} else {
    $result =mysqli_query($db, "SELECT `id` , `first_name` , `last_name` FROM  `users` WHERE `publish` = 1") or die(mysql_error());

?>
<style type="text/css">
    p{
        margin:0;
    }
    .phonebook__wrapper{
        width: 100%;
        display: flex;
        justify-content: center;
    }
    .phonebook{
        width: 80%;
    }
    .phonebook h1{
        text-align: center;
        font-weight: normal;
        color: #a94f4f;
    }
    .phonebook__rows{
        width: 100%;
    }
    .phonebook__rows{
        display: flex;
        flex-direction: column;
    }
    .phonebook--row{
        display: flex;
        align-items: center;
        margin-top: 1.5em;
    }
    .phonebook--row p{
        width: 20%;
        font-size: 1.2em;
        color: #948888;

    }
    .phonebook--row span{
        color: blue;
        text-decoration: underline;
        cursor: pointer;
    }
    .contact__details{
        display: flex;
        justify-content: space-around;
    }
    .contact--column{
        width: 25%;
        color: gray;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .contact--column h4{
        margin:  1em 0;
        text-decoration: underline;
        font-weight: normal;
    }
    </style>
    <section class="phonebook__wrapper">
        <div class="phonebook">
            <h1>Public Phonebook</h1>
            <div class="phonebook__rows">
                <?php
                $i =1;
                while($row= mysqli_fetch_array($result, MYSQLI_ASSOC)){
                    $id = $row['id'];
                    $first_name = $row['first_name'];
                    $last_name=$row['last_name'];
                

                    ?>
                    <div class="phonebook--row">
                        <p><?php echo $i . ". "  .$first_name . " " . $last_name;?></p>
                        <span class="phonebook--details"data-id="<?php echo $id; ?>">show details</span>

                    </div>
                    <?php
                    $i++;
            };
            ?>
            </div>
        </div>
    </section>
<?php
}
?>



