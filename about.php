<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<section class="about">

   <div class="row">

      <div class="image">
         <img src="images/about-img.svg" alt="">
      </div>

      <div class="content">
         <h3>About Us</h3>
         <p>We are the BSIT-4A, group of Old School Boys, led by Edrian Ross, John Patrick Zuela, and Jilson S. Caranzo.</p>
         <a href="contact.php" class="btn">contact us</a>
      </div>

   </div>

</section>

<section class="reviews">
   
   <h1 class="heading">client's reviews</h1>

   <div class="swiper reviews-slider">

   <div class="swiper-wrapper">

      <div class="swiper-slide slide">
         <img src="images/reviews-1.jpg" alt="">
         <p>Rating: 4/5 stars"I recently purchased this laptop from [BestBuyLaptops]. I was pleasantly surprised by its exceptional performance and value for money. The specifications are top-notch, allowing me to seamlessly multitask and run demanding applications without any lag. The build quality is also impressive, and the design is sleek and professional. Overall, I'm extremely satisfied with my purchase and would highly recommend it to anyone in need of a reliable laptop."</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Jilson S. Caranzo</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/rosspic.jpg" alt="">
         <p>Rating: 4/5 stars. I ordered this laptop online, and I was amazed by how quickly it arrived. The packaging was secure, and the laptop itself is stunning. The sleek design caught my eye immediately, and I'm pleased to say that it performs just as well as it looks. Setting it up was a breeze, and I appreciate the pre-installed software that came with it. It's been a joy to use so far, and I have no complaints whatsoever."</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>John Patrick Zuela</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/patrickpic.jpeg" alt="">
         <p>Rating: 4/5 stars"I've been using this laptop for a few weeks now, and I'm impressed by its battery life and portability. It's lightweight and easy to carry around, making it perfect for my on-the-go lifestyle. The battery lasts for hours on a single charge, which is a huge plus for me as I often work from different locations. My only minor gripe is that the fan can get a bit loud under heavy load, but it's not a dealbreaker for me. Overall, I'm happy with my purchase."</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Edrian Ross</h3>
      </div>

   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>









<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".reviews-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
        slidesPerView:1,
      },
      768: {
        slidesPerView: 2,
      },
      991: {
        slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>