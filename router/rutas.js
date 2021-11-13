var express = require('express');
var router = express.Router();
const conexion = require('../database/db');

//rutas
router.get('/', (req, res) => {
    res.render('home')});

router.get('/contacto', (req, res) => {
    res.render('contacto')}); 

router.get('/dolls', (req, res) => {
    res.render('dolls')}); 

router.get('/apego', (req, res) => {
    res.render('apego')}); 

router.get('/almohadones',(req,res)=>{
    res.render('almohadones')});

router.get('/msg',(req,res)=>{
    res.render('msg')});

//error
router.get('*', (req, res) => {
    res.render('error');
});


//ruta SAVE

router.post('/save',(req,res)=>{
    
    let data = {
        nom_cons:req.body.nombre, 
        apellido_cons:req.body.apellido,
        email_cons:req.body.email,
        art_chosen_cons:req.body.arte,
        text_cons:req.body.consulta
    };

    let sql = 'INSERT INTO consultas SET ? ';
    
    //hago la query, el pedido
    conexion.query(sql,data,(error,results)=>{
        if (error) throw error;
           res.redirect('msg') 
        });
}); 







module.exports = router