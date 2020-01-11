const express = require("express");
const app = express();
const fs = require('fs')

// http://expressjs.com/en/starter/static-files.html
app.use(express.static("public"));

// http://expressjs.com/en/starter/basic-routing.html
app.get("/:recipe", function(request, response) {
  fs.exists(`recipes/${request.params.recipe}.html`, (found) => {
    if (found) {
      response.sendFile(`recipes/${request.params.recipe}.html`, { root: __dirname})
    } else {
      response.status(404).send('no recipe found!')
    }
  })
});

const listener = app.listen(process.env.PORT, function() {
  console.log("Your app is listening on port " + listener.address().port);
});
