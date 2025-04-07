const express = require('express');
const app = express();
app.get("/", (req, res) => {
    res.send("Hello World! i hope this is working on gke!.");
})
app.listen(80, () => {
    console.log('Server is running on port 80');
    });