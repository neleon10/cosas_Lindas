require("dotenv").config()
const express = require('express');
const app = express();
const hbs = require('hbs');
const conexion = require('./database/db');
const PORT = process.env.PORT;

//handlebars
app.set('view engine','hbs');
hbs.registerPartials(__dirname + '/views/templ-partials');

//static files
app.use(express.static('public'));

app.use(express.urlencoded({extended:false}));
app.use(express.json());

// link a rutas
const rutas = require('./router/rutas.js');
app.use('/',rutas);


//port
app.listen(PORT,()=>{
    console.log('Escuchando');
});
