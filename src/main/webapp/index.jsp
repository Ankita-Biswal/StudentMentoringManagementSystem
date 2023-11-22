<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>FM</title>
    <style>
    * {
    margin: 0;
    padding: 0;
    font-family: 'Poppins', sans-serif;
}
.header {
    min-height: 100vh;
    width: 100%;
    background-image: linear-gradient(rgba(4, 9, 30, 0.7),rgba(4, 9, 30, 0.7)),url(images/banner.png);
    background-position: center;
    background-size: cover;
    position: relative;
}
nav{
    display: flex;
    padding: 2% 6%;
    justify-content: space-between;
    align-items: center;
}
nav img {
    width: 150px;
}
.nav-links {
    flex: 1;
    text-align: right;
}
.nav-links ul li{
    list-style: none;
    display: inline-block;
    padding: 8px 12px;
    position: relative;
}
.nav-links ul li a{
    color: #fff;
    text-decoration: none;
    font-size: 13px; 
}
.nav-links ul li::after {
    content: '';
    width: 0%;
    height: 2px;
    background: #f44336;
    display: block;
    margin: auto;
    transition: 0.5s;
}
.nav-links ul li:hover::after{
    width: 100%;
}
.text-box {
    width: 90%;
    color: #fff;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    text-align: center;
}
.text-box h1 {
    font-size: 62px;
}
.text-box p{
    margin: 10px 0 40px;
    font-size: 14px;
    color: #fff;
}
.hero-btn{
    display: inline-block;
    text-decoration: none;
    color:#fff;
    border: 1px solid #fff;
    padding: 12px 34px;
    font-size: 13px;
    background: transparent;
    position: relative;
    cursor: pointer;
}
.hero-btn:hover{
    border: 1px solid #f44336;
    background: #f44336;
    transition: 1s;
}

nav .fa{
    display: none;
}

@media(max-width:700px){
    .text-box h1 {
        font-size: 20px;
    }
    .nav-links ul li {
        display: block;
    }
    .nav-links{
        position: absolute;
        background: #f44336;
        height: 100vh;
        width: 200px;
        top: 0;
        right:-200px;
        text-align: left;
        z-index: 2;
        transition: 1s;
    }
    nav .fa {
        display: block;
        color: #fff;
        margin: 10px;
        font-size: 22px;
        cursor: pointer;
    }
    .nav-links ul {
        padding: 30px;
    }
}
/* -------------------course-------------- */
.course {
    width: 80%;
    margin: auto;
    text-align: center;
    padding-top: 100px;
}
h1 {
    font-size: 36px;
    font-weight: 600;
}
p {
    color: #777;
    font-size: 14px;
    font-weight: 300;
    line-height: 22px;
    padding: 10px;
}
.row {
    margin-top: 5%;
    display: flex;
    justify-content: space-between;
}
.course-col {
    flex-basis: 31%;
    background: #fff3f3;
    border-radius: 10px;
    margin-bottom: 5%;
    padding: 20px 12px;
    box-sizing: border-box;
    transition: 0.5s;
}
h3 {
    text-align: center;
    font-weight: 600;
    margin: 10px 0;
}
.course-col:hover {
    box-shadow: 0 0 20px 0px rgba(0,0,0,0.2);
}

@media (max-width:700px){
    .row{
        flex-direction: column;
    }
}



/* -----------------campus- */
.campus {
    width: 80%;
    margin: auto;
    text-align: center;
    padding-top: 50px;
}
.campus-col {
    flex-basis: 32%;
    border-radius: 10px;
    margin-bottom: 30px;
    position: relative;
    overflow: hidden;
}
.campus-col img {
    width: 100%;
    display: block;
}
.layer {
    background:transparent ;
    height: 100%;
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    transition: 0.5s;
}
.layer:hover{
    background:rgba(226,0,0,0.7) ;
}
.layer h3{
    width: 100%;
    font-weight: 500;
    color: #fff;
    font-size: 26px;
    bottom: 0;
    left: 50%;
    transform: translateX(-50%);
    position: absolute;
    opacity: 0;
    transition: 0.5s;
}
.layer:hover h3{
    bottom: 49%;
    opacity: 1;
}

/* --------------facilities---------- */
.facilities{
    width: 80%;
    margin: auto;
    text-align: center;
    padding-top: 100px;
}
.facilities-col{
    flex-basis: 31%;
    border-radius: 10px;
    margin-bottom: 5%;
    text-align: left;
}
.facilities-col img{
    width: 100%;
    border-radius: 10px;
}
.facilities-col p{
    padding: 0;
}
.facilities-col h3{
    margin-top: 16px;
    margin-bottom: 15px;
    text-align: left;
}
/* ---------testimonials------ */
.testimonials{
    width: 80%;
    margin: auto;
    padding-top: 100px;
    text-align: center;
}
.testimonials-col{
    flex-basis: 44%;
    border-radius: 10px;
    margin-bottom: 5%;
    text-align: left;
    background: #fff3f3;
    padding: 25px;
    cursor: pointer;
    display: flex;
}
.testimonials-col img {
    height: 40px;
    margin-left: 5px;
    margin-right: 30px;
    border-radius: 50%;
}
.testimonials-col p{
    padding: 0;
}
.testimonials-col h3{
    margin-top: 15px;
    text-align: left;
}
.testimonials-col .fa{
    color: #f44336;
}
@media(max-width:700px){
    .testimonials-col img {
        margin-left: 0px;
        margin-right: 15px;
    }
}
/* -------------cta--------- */
.cta{
    margin: 100px auto;
    width: 80%;
    background-image:linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)),url(images/banner2.jpg) ;
    background-position: center;
    background-size: cover;
    border-radius: 10px;
    text-align: center;
    padding: 100px 0;
}
.cta h1{
    color: #fff;
    margin-bottom: 40px;
    padding: 0;
}
@media(max-width:700px){
    .cta h1{
        font-size: 24px;
    }
}
/* --------footer------- */
.footer{
    width: 100%;
    text-align: center;
    padding: 30px 0;

}
.footer h4 {
    margin-bottom:25px ;
    margin-top: 20px;
    font-weight: 600;
}
.icons .fa{
color: #f44336;
margin: 0 13px;
cursor: pointer;
padding:18px 0 ;
}
</style>
</head>
<body>
    <section class="header">
       <nav>
        <a href="index.html"><img src="images/kolg.webp"></a>
        <div class="nav-links" id="navLinks">
            <i class="fa fa-times" onclick="hideMenu()"></i>
             <ul>
                <li><a href="">HOME</a></li>
                <li><a href="">ABOUT</a></li>
                <li><a href="">COURSE</a></li>
                <li><a href="Login.jsp">LOGIN</a></li>
                <li><a href="Register.jsp">REGISTER</a></li>
             </ul>
        </div>
        <i class="fa fa-bars" onclick="showMenu()"></i>
       </nav> 

<div class="text-box">
    <h1>CENTURION UNIVERSITY</h1>
    <p>Universities serve as vibrant hubs of intellectual exploration, fostering a diverse community of students hungry for knowledge.<br>Within their hallowed halls, ideas converge, and perspectives broaden as individuals embark on academic journeys. </p>
    <a href="" class="hero-btn">visit us to know more</a>
</div>

    </section>

<!-- ---------course------------- -->
<section class="course">
    <h1>Courses we offer</h1>
    <p>you shall find courses in all fields in our UNI</p>
    <div class="row">
        <div class="course-col">
            <h3>Intermediate</h3>
            <p>Intermediate courses bridge the gap between foundational knowledge and specialized expertise, offering a pivotal phase in academic pursuits. These courses serve as intellectual crossroads, guiding students from the broad fundamentals of a discipline to more nuanced and advanced concepts. Here, learners delve into the intricacies of their chosen subjects, honing analytical skills and cultivating a deeper understanding. Intermediate courses often act as catalysts for specialization, providing the necessary depth to navigate the complexities within a field of study. As students navigate this academic terrain, they not only acquire specialized knowledge but also develop critical thinking and problem-solving abilities that are essential for future challenges. It's a transformative stage where the seeds of expertise are planted, setting the stage for a more profound exploration of the subject matter and paving the way for advanced study and real-world application.</p>
        </div>
        <div class="course-col">
            <h3>Degree</h3>
            <p>Intermediate courses bridge the gap between foundational knowledge and specialized expertise, offering a pivotal phase in academic pursuits. These courses serve as intellectual crossroads, guiding students from the broad fundamentals of a discipline to more nuanced and advanced concepts. Here, learners delve into the intricacies of their chosen subjects, honing analytical skills and cultivating a deeper understanding. Intermediate courses often act as catalysts for specialization, providing the necessary depth to navigate the complexities within a field of study. As students navigate this academic terrain, they not only acquire specialized knowledge but also develop critical thinking and problem-solving abilities that are essential for future challenges. It's a transformative stage where the seeds of expertise are planted, setting the stage for a more profound exploration of the subject matter and paving the way for advanced study and real-world application.</p>
        </div>
        <div class="course-col">
            <h3>Post graduation</h3>
            <p>Intermediate courses bridge the gap between foundational knowledge and specialized expertise, offering a pivotal phase in academic pursuits. These courses serve as intellectual crossroads, guiding students from the broad fundamentals of a discipline to more nuanced and advanced concepts. Here, learners delve into the intricacies of their chosen subjects, honing analytical skills and cultivating a deeper understanding. Intermediate courses often act as catalysts for specialization, providing the necessary depth to navigate the complexities within a field of study. As students navigate this academic terrain, they not only acquire specialized knowledge but also develop critical thinking and problem-solving abilities that are essential for future challenges. It's a transformative stage where the seeds of expertise are planted, setting the stage for a more profound exploration of the subject matter and paving the way for advanced study and real-world application.</p>
        </div>
    </div>
    
</section>
<!-- ------campus---- -->

<section class="campus">
<h1>our Global Campus</h1>
<p>you shall find courses in all fields in our UNI</p>

<div class="row">
    <div class="campus-col">
        <img src="images/london.png">
        <div class="layer">
            <h3>London</h3>
        </div>
    </div>
    <div class="campus-col">
        <img src="images/newyork.png">
        <div class="layer">
            <h3>New York</h3>
        </div>
    </div>
    <div class="campus-col">
        <img src="images/washington.png">
        <div class="layer">
            <h3>Washington</h3>
        </div>
    </div>
</div>

</section>

<!-- ----------facilities---- -->
<section class="facilities">
    <h1>our facilities</h1>
    <p>you shall find courses in all fields in our UNI</p>
<div class="row">
    <div class="facilities-col">
        <img src="images/library.png">
        <h3>world class library</h3>
        <p>Intermediate courses bridge the gap between foundational knowledge and specialized expertise, offering a pivotal phase in academic pursuits. These courses serve as intellectual crossroads, guiding students from the broad fundamentals of a discipline to more nuanced and advanced concepts. Here, learners delve into the intricacies of their chosen subjects, honing analytical skills and cultivating a deeper understanding</p>
    </div>
    <div class="facilities-col">
        <img src="images/basketball.png">
        <h3>world class play ground</h3>
        <p>Intermediate courses bridge the gap between foundational knowledge and specialized expertise, offering a pivotal phase in academic pursuits. These courses serve as intellectual crossroads, guiding students from the broad fundamentals of a discipline to more nuanced and advanced concepts. Here, learners delve into the intricacies of their chosen subjects, honing analytical skills and cultivating a deeper understanding</p>
    </div>
    <div class="facilities-col">
        <img src="images/cafeteria.png">
        <h3>world class food </h3>
        <p>Intermediate courses bridge the gap between foundational knowledge and specialized expertise, offering a pivotal phase in academic pursuits. These courses serve as intellectual crossroads, guiding students from the broad fundamentals of a discipline to more nuanced and advanced concepts. Here, learners delve into the intricacies of their chosen subjects, honing analytical skills and cultivating a deeper understanding</p>
    </div>
</div>

</section>
<!-- -----------testimonials--------- -->
<section class="testimonials">
    <h1>what our student says</h1>
    <p>you shall find courses in all fields in our UNI</p>
    <div class="row">
        <div class="testimonials-col">
            <img src="images/user1.jpg">
            <div>
                <p>College is a rollercoaster of discovery. It's not just about lectures and exams; it's a journey of self-discovery, late-night study sessions</p>
                <h3>Ahmed Alaa</h3>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star-o" ></i>
            </div>
        </div>
        <div class="testimonials-col">
            <img src="images/user2.jpg">
            <div>
                <p>College is a rollercoaster of discovery. It's not just about lectures and exams; it's a journey of self-discovery, late-night study sessions</p>
                <h3>Mohamed Alaa</h3>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star-half-o" ></i>
            </div>
        </div>
    </div>
</section>
<!-- ------------call to action---------- -->
<section class="cta">
    <h1>
       Enroll For Our Various Courses<br>Anywhere From The World 
    </h1>
    <a href="" class="hero-btn">contact us</a>
</section>

<!-- ------------footer------ -->
<section class="footer">
    <h4>About Us</h4>
    <p>academic terrain, they not only acquire specialized knowledge but also develop critical thinking and problem-solving<br>abilities that are essential for future challenges. It's a transformative stage where the seeds of expertise are planted,<br>setting the stage for a more profound exploration of the subject matter and paving the way for advanced study and real-world application.</p>
    <div class="icons">
        <i class="fa fa-facebook" ></i>
        <i class="fa fa-twitter" ></i>
        <i class="fa fa-instagram" ></i>
        <i class="fa fa-linkedin" ></i>

    </div>
    
</section>


<!-- -------javaScript for toggle menu ------- -->

<script>
    var navLinks = document.getElementById("navLinks");
    function showMenu(){
        navLinks.style.right="0";
    }
    function hideMenu(){
        navLinks.style.right="-200px";
    }
</script>


</body>
</html>