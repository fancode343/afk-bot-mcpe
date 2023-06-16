const express = require("express");
const app = express();

// Serve static files from the "public" folder
app.use(express.static("public"));

// Define a route for "/bot"
app.get("/bot", (req, res) => {
const bedrock = require('bedrock-protocol') 
const client = bedrock.createClient({ 
host: 'MoonLightSMPG2.aternos.me', 
port: 64319, 
version: '1.20.0', 
username: 'Bot3', 
offline: true
}) 

});

app.listen(3000, () => {
  console.log('✅ Web is up');
});
