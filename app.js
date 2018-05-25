const express = require('express');
const app = express();
const bodyParser = require('body-parser');

const urlencodedParser = bodyParser.urlencoded({ extended: false });

app.use("/", express.static(__dirname, {'index':'index.html'}));

app.post('/senddata', urlencodedParser, function(req,res){
    response = {
        question:req.body.question,
        answer:req.body.answer
    };
    console.log(response);
    res.send(response);
})

const server = app.listen(80);


