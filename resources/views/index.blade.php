<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ЭУП</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <style>
        html, body {
            margin: 0;
            padding: 0;
        }
        html {
            background-color: rgb(247, 247, 247);
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
        }
        body {
            background-color: white;
            width: 1024px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        #app {
            width: 100%;
        }
    </style>
</head>
<body>
    <div id="app"></div>
</body>
</html>