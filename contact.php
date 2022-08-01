<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>get in touch</title>
    <link rel="stylesheet" href="assets/css/contact.css" />
    	<!-- Favicon -->
  	<link rel="shortcut icon" href="assets/images/favicon2.ico">
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <div class="container">
      <span class="big-circle"></span>
      <img src="img/shape.png" class="square" alt="" />
      <div class="form">
        <div class="contact-info">
          <h3 class="title">Let's get in touch</h3>
          <p class="text">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe
            dolorum adipisci recusandae praesentium dicta!
          </p>

          <div class="info">
            <div class="information">
              <img src="assets/images/location.png" class="icon" alt="" />
              <p><a href="https://goo.gl/maps/FrJAmxTj2CUwrxYy6" target="_blank"> Nairobi, kenya - 400104 </a></p>
            </div>
            <div class="information">
              <img src="assets/images/email.png" class="icon" alt="" />
              <p><a href="mailto:arjannky@gmail.com" target="_blank">  arjannky@gmail.com</a></p>
            </div>
            <div class="information">
              <img src="assets/images/phone.png" class="icon" alt="" />
              <p><a href="tel:+254798325458"> +254798325458</a></p>
            </div>
          </div>

          <div class="social-media">
            <p>Connect with us </p>
            <div class="social-icons">
              <a href="#">
                <i class="fab fa-facebook-f"></i>
              </a>
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="#">
                <i class="fab fa-instagram"></i>
              </a>
              <a href="#">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </div>
          </div>
        </div>

        <div class="contact-form">
          <span class="circle one"></span>
          <span class="circle two"></span>

          <form action="index.html" autocomplete="off">
            <h3 class="title">Contact us</h3>
            <div class="input-container">
              <input type="text" name="name" class="input" />
              <label for="">Username</label>
              <span>Username</span>
            </div>
            <div class="input-container">
              <input type="email" name="email" class="input" />
              <label for="">Email</label>
              <span>Email</span>
            </div>
            <div class="input-container">
              <input type="tel" name="phone" class="input" />
              <label for="">Phone</label>
              <span>Phone</span>
            </div>
            <div class="input-container textarea">
              <textarea name="message" class="input"></textarea>
              <label for="">Message</label>
              <span>Message</span>
            </div>
            <input type="submit" value="Send" class="btn" />
          </form>
        </div>
      </div>
    </div>

    <script src="assets/js/contact.js"></script>
  </body>
</html>
