<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WEB LAB FINAL</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <?php include 'config.php'; ?>
</head>
<body>
<div class="section_header text-center mb-5 mt-4">
    <h1><u>LogIn</u> </h1>

    <div class="container">
      <div class="row">
        <div class="col-lg-8 offset-lg-2 col-12">


        <form class="text-left mt-5" action="" method="POST">
          <div class="form-group">
            <label>Username</label>
            <input type="text" class="form-control" name="username" placeholder="enter your name" required autocomplete="off">
          </div>
          <div class="form-group">
            <label>Password</label>
            <input type="password" class="form-control" name="password" placeholder="enter your name" required autocomplete="off">
          </div>
          <div class="form-group">
            <label>Email address</label>
            <input type="email" class="form-control" name="email" placeholder="name@example.com" required autocomplete="off">
          </div>
          <div class="form-group">
            <label>Adress</label>
            <input type="text" class="form-control" name="address" placeholder="enter your address" required autocomplete="off">
          </div>

          <div class="form-group">
          <label>Choose Your Gender</label><br>
            <div class="custom-control custom-checkbox custom-control-inline text-capitalize">
            <input type="checkbox" class="custom-control-input" id="customcheckbox1" name="gender[]" value="male">
            <label for="customcheckbox1" class="custom-control-label">Male</label>
            </div>

            <div class="custom-control custom-checkbox custom-control-inline text-capitalize">
            <input type="checkbox" class="custom-control-input" id="customcheckbox2" name="gender[]" value="fever">
            <label for="customcheckbox2" class="custom-control-label">Female</label>
            </div>

            <div class="custom-control custom-checkbox custom-control-inline text-capitalize">
            <input type="checkbox" class="custom-control-input" id="customcheckbox3" name="gender[]" value="others">
            <label for="customcheckbox3" class="custom-control-label">Others</label>
            </div>
          </div>

          <button type="submit" class="btn btn-primary" name="submit">Submit</button>
        </form>

        </div>
      </div>
    </div>
</div>
</body>
</html>