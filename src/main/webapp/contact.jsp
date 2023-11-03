<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Us</title>
  <style>
    body {
      background: linear-gradient(to right top, #e4e7d6, #b8af93, #937758, #6f402a, #480508);
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    .contact-container {
      max-width: 800px;
      margin: 0 auto;
      padding: 30px;
    
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    .contact-container h1 {
      text-align: center;
    }

    .contact-info,
    .contact-form {
      margin-top: 20px;
      padding: 20px;
    }

    .contact-form form {
      display: flex;
      flex-direction: column;
    }

    .form-group {
      margin-bottom: 15px;
    }

    label {
      font-weight: bold;
    }

    input,
    textarea {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    button {
      background: #007BFF;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    button:hover {
      background: #0056b3;
    }

    /* Responsive styles */
    @media (max-width: 768px) {
      .contact-container {
        padding: 20px;
      }

      .form-group {
        margin-bottom: 10px;
      }

      input,
      textarea {
        padding: 8px;
      }

      button {
        padding: 8px 16px;
      }
    }

    /* Additional responsive styles */
    @media (max-width: 500px) {
      .contact-container {
        padding: 10px;
      }

      .form-group {
        margin-bottom: 8px;
      }

      input,
      textarea {
        padding: 6px;
      }

      button {
        padding: 8px 12px;
      }
    }
  </style>
</head>

<body>
  <div class="contact-container">
    <h1>Contact Us</h1>

    <section class="contact-info">
      <h2>Contact Information</h2>
      <p>If you have any questions or need assistance, feel free to reach out to us:</p>
      <ul>
        <li>Email: contact@example.com</li>
        <li>Phone: +1 (123) 456-7890</li>
        <li>Address: 123 Main Street, City, Country</li>
      </ul>
    </section>

    <section class="contact-form">
      <h2>Contact Form</h2>
      <p>Send us a message using the form below:</p>
      <form>
        <div class="form-group">
          <label for="name">Name:</label>
          <input type="text" id="name" name="name" required />
        </div>
        <div class="form-group">
          <label for="email">Email:</label>
          <input type="email" id="email" name="email" required />
        </div>
        <div class="form-group">
          <label for="message">Message:</label>
          <textarea id="message" name="message" rows="4" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </section>
  </div>

  <script>
    // JavaScript to set the background color
    document.body.style.backgroundColor = '#f2f2f2';
  </script>

</body>

</html>
