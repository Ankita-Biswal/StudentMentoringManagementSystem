<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us</title>
<style>
  body {
    background: linear-gradient(to right top, #e4e7d6, #b8af93, #937758, #6f402a, #480508);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    font-family: Arial, sans-serif;
    display: flex;
    flex-direction: column;
    justify-content: flex-end;
    min-height: 100vh;
    margin: 0;
  }

  .container {
    max-width: 1000px;
    margin: 0 auto;
    padding: 30px;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
  }

  .box {
    width: calc(30% - 20px); 
    background: radial-gradient(circle, #b6a6a6 10%, rgb(29, 29, 255) 100%);
    padding: 20px; 
    border-radius: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    margin-bottom: 200px;
  }

  .box h1 {
    color: #fff;
    font-size: 24px; 
  }

  .box p {
    color: #eee;
  }
</style>
</head>
<body>
<div class="container">
  <h1>About Us</h1>
  <p>
    The University has the wherewithal to blend traditional, applied, and action learning to develop productive citizens for a productive nation.
  </p>
  <p>
    Need more information? <a href="contact.jsp">Contact us</a>.
  </p>
</div>
<div class="container">
  <div class="box">
    <h1>Find Your Mentor</h1>
    <p>
      Discover experienced mentors who can guide you on your journey to success. Learn from their knowledge and expertise.
    </p>
  </div>

  <div class="box">
    <h1>Share Your Expertise</h1>
    <p>
      Are you an expert in your field? Share your knowledge with aspiring mentees and make a positive impact on their lives.
    </p>
  </div>

  <div class="box">
    <h1>Empower Others</h1>
    <p>
      Help others achieve their goals, develop new skills, and grow professionally. Empower the next generation of leaders.
    </p>
  </div>
</div>
</body>
</html>
