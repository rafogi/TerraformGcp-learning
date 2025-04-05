const express = require('express');
const app = express();
app.get("/", (req, res) => {
    res.send("Hello World! This is a Node.js application running in a Docker container.");
})
app.listen(80, () => {
    console.log('Server is running on port 80');
    });