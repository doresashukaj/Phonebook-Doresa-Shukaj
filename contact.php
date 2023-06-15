<?php
session_start();
if(isset($_SESSION['login_user'])){
    $db = new mysqli("localhost", "root", "", "task");
    ?>

<style type="text/css">
	p {
		margin: 0;
	}

	input[type="checkbox"] {
		cursor: pointer;
	}

	input[type="submit"] {
		margin-top: 2em;
		float: right;
		padding: 0.1em 2em;
		cursor: pointer;
	}

	.contact__wrapper {
		width: 100%;
		display: flex;
		justify-content: center;
	}
	.contact {
		width: 80%;
	}

	.contact__header {
		position: relative;
	}
	.contact__header h1 {
		text-align: center;
		font-weight: normal;
		color: #9a4747;
	}
	.contact__header .publish {
		text-align: right;
		padding: 0;
		margin: 0;
		position: absolute;
		top: 0;
		right: 0;
	}
	.contact__header label {
		cursor: pointer;
	}

	.mycontact__columns {
		display: flex;
		justify-content: space-between;
	}

	.mycontact--column {
		width: 20%;
	}

	.mycontact--column h3 {
		text-align: center;
		margin: 1em 0;
		text-decoration: underline;
		font-weight: normal;
		color: gray;
	}

	.mycontact__rows {
		display: flex;
		flex-direction: column;
	}

	.contact__input {
		display: flex;
		margin-bottom: 0.5em;
	}

	.contact__input label {
		width: 30%;
	}

	.contact__input input {
		width: 70%;
	}

	.phone__input {
		display: flex;
		margin-bottom: 0.5em;
	}

	.phone__input .phone {
		width: 100%;
	}

	.email__input {
		display: flex;
		margin-bottom: 0.5em;
	}

	.email__input .email {
		width: 100%;
	}

	.mycontact__rows span {
		color: blue;
		text-decoration: underline;
		cursor: pointer;
		align-self: flex-end;
	}

</style>
<section class="contact__wrapper">
	<div class="contact">
		<form action="" method="POST">
			<?php
				$user = mysqli_real_escape_string($db, $_SESSION['login_user']);
				$result = mysqli_query($db, "SELECT `id`, `first_name`, `last_name`, `address`, `zipcity`, `country`, `publish` FROM `users` WHERE `username` = '" . $user . "'") or die(mysql_error());
				$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
				$user_id = $row['id'];
				$country = $row['country'];
				$result2 = mysqli_query($db, "SELECT `id`, `code` FROM `countries`") or die(mysql_error());
				$result3 = mysqli_query($db, "SELECT `phone_number`, `publish` FROM `user_phones` WHERE `user_id` = $user_id") or die(mysql_error());
				$result4 = mysqli_query($db, "SELECT `email`, `publish` FROM `user_emails` WHERE `user_id` = $user_id") or die(mysql_error());
			?>
			<div class="contact__header">
				<h1>My Contact</h1>
				<div class="publish">
					<label for="publish">Publish my contact</label>
					<input type="checkbox" id="publish" name="check_publish" <?php if($row['publish'] == 1) echo "checked"; ?>>
				</div>
			</div>
			<div class="mycontact__columns">
				<div class="mycontact--column">
					<h3>Contact</h3>
					<div class="mycontact__rows">
						<div class="contact__input">
							<label for="firstname">Firstname: </label>
							<input type="text" id="firstname" name="firstname" value="<?php echo $row['first_name']; ?>">
						</div>
						<div class="contact__input">
							<label for="lastname">Lastname: </label>
							<input type="text" id="lastname" name="lastname" value="<?php echo $row['last_name']; ?>">
						</div>
						<div class="contact__input">
							<label for="address">Address: </label>
							<input type="text" id="address" name="address" value="<?php echo $row['address']; ?>">
						</div>
						<div class="contact__input">
							<label for="zipcity">ZIP/City: </label>
							<input type="text" id="zipcity" name="zipcity" value="<?php echo $row['zipcity']; ?>">
						</div>
						<div class="contact__input">
							<label for="country">Country: </label>
							<select id="country" name="country">
							<?php
								while($row2 = mysqli_fetch_array($result2,MYSQLI_ASSOC)){
									if($row2['id'] == $country){
										echo "<option value='" . $row2['id'] . "' selected>" . $row2['code'] . "</option>";
									} else {
										echo "<option value='" . $row2['id'] . "'>" . $row2['code'] . "</option>";
									}
								}
							?>
							</select>
						</div>
					</div>
				</div>
				<div class="mycontact--column">
					<h3>Phones</h3>
					<div class="mycontact__rows">
						<?php
							while($row3 = mysqli_fetch_array($result3,MYSQLI_ASSOC)){
						?>
						<div class="phone__input">
							<input type="text" class="phone" name="phone[]" value="<?php echo $row3['phone_number']; ?>">
							<input type="hidden" class="hidden-check" name="hidden_phone_check[]" value="<?php echo $row3['publish']; ?>">
							<input type="checkbox" class="phone--checkbox" name="check_phone[]" <?php if($row3['publish'] == 1) echo "checked"; ?>>
						</div>
						<?php
							}
						?>
						<span class="add_phone_row">Add</span>
					</div>
				</div>
				<div class="mycontact--column">
					<h3>Email</h3>
					<div class="mycontact__rows">
						<?php
							while($row4 = mysqli_fetch_array($result4,MYSQLI_ASSOC)){
						?>
						<div class="email__input">
							<input type="email" class="email" name="email[]" value="<?php echo $row4['email']; ?>">
							<input type="hidden" class="hidden-check" name="hidden_email_check[]" value="<?php echo $row4['publish']; ?>">
							<input type="checkbox" class="email--checkbox" name="check_email[]" <?php if($row4['publish'] == 1) echo "checked"; ?>>
						</div>
						<?php
							}
						?>
						<span class="add_email_row">Add</span>
					</div>
				</div>
			</div>
		<button type="submit" name="contact">Save</button>
		</form>
	</div>
</section>
<?php
	}
?>