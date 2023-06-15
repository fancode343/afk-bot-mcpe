const site = require('./web.js');
const bedrock = require('bedrock-protocol') 
const client = bedrock.createClient({ 
host: 'MoonLightSMPG2.aternos.me', 
port: 64319, 
version: '1.20.0', 
username: 'Bot3', 
offline: true 
}) 
console.log ('Connected') 
