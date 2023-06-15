<?php

?>
<style type="text/css">
	.login__wrapper {
		width: 100%;
		display: flex;
		justify-content: center;
	}
	.login {
		width: 25%;
	}

	.login h1 {
		text-align: center;
		font-weight: normal;
		color: #9a4747;
	}

	.login__inputs {
		width: 100%;
	}

	.login__inputs {
		display: flex;
		flex-direction: column;
	}

	.login__input {
		display: flex;
		margin-bottom: 0.5em;
	}

	.login__input label {
		text-align: center;
	}

	.login__input label, .login__input input {
		width: 100%;
	}

	.submit--button {
		width: 35%;
		float: right;
	}


</style>
<section class="login__wrapper">
	<div class="login">
		<h1>Login</h1>
		<div class="login__inputs">
			<form method="POST" action="">
				<div class="login__input">
					<label for="username">Username: </label>
					<input type="text" id="username" name="username" required>
				</div>
				<div class="login__input">
					<label for="password">Password: </label>
					<input type="password" id="password" name="password" required>
				</div>
				<button type="submit" name="login" class="submit--button">Login</button>
			</form>
		</div>
	</div>
</section>
</html>
