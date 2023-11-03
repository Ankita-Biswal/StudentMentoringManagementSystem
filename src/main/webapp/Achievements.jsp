<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>College Achievements</title>
    <style>
        body {
            background-image: linear-gradient(to right top, #e4e7d6, #b8af93, #937758, #6f402a, #480508);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
        }

        header {
            text-align: center;
            padding: 20px;
        }

        header img {
            max-width: 100%;
            height: auto;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
        }

        .achievement {
            margin-bottom: 20px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
        }

        .achievement h2 {
            font-size: 24px;
        }

        .achievement p {
            font-size: 16px;
        }

        .achievement-img {
            text-align: center;
        }

        .achievement-img img {
            width: 100%; /* Make achievement images span the full screen width */
            height: auto;
            margin-bottom: 10px;
        }

        /* Responsive layout */
        @media (max-width: 768px) {
            .container {
                padding: 10px;
            }
            .achievement {
                padding: 10px;
            }
        }
    </style>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-custom1">
    <a class="navbar-brand" href="#"><img src="images/Logo.png" height="40" weight="40"></a>
    </nav>
    <div class="container">
        <div class="achievement">
            <div class="achievement-img">
                <img src="images/achievement1.png" alt="Achievement 1">
            </div>
            <h2>Achievement Title 1</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod sit amet libero vel tincidunt.</p>
        </div>
        <div class "achievement">
            <div class="achievement-img">
                <img src="images/achievement-2.png" alt="Achievement 2">
            </div>
            <h2>Achievement Title 2</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod sit amet libero vel tincidunt.</p>
        </div>
        <div class "achievement">
            <div class="achievement-img">
                <img src="images/achievement-3.png" alt="Achievement 3">
            </div>
            <h2>Achievement Title 3</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod sit amet libero vel tincidunt.</p>
        </div>
    </div>
</body>
</html>
