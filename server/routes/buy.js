const models = require('../public/javascripts/db');
const express = require('express');
const router = express.Router();
const mysql = require('mysql');
const $sql = require('../public/javascripts/sqlMap');

const conn = mysql.createConnection(models.mysql);
conn.connect(() => { });

router.all('*', (req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*'); // 解决跨域
  next();
})

router.get('/rent', function (req, res, next) {
  let id = req.query.id;
  var rent_buy = $sql.buy.rent + " where rid = '" + id + "'"
  conn.query(rent_buy, (error, results) => {
    if (error) {
      throw error;
    }
    res.send() //这里发送一个json对象给前端
  })
});

router.get('/old', function (req, res, next) {
  let id = req.query.id;
  var old_buy = $sql.buy.old + " where oid = '" + id + "'"
  conn.query(old_buy, (error, results) => {
    if (error) {
      throw error;
    }
    res.send() //这里发送一个json对象给前端
  })
});

router.get('/new', function (req, res, next) {
  let id = req.query.id;
  var new_buy = $sql.buy.new + " where hid = '" + id + "'"
  conn.query(new_buy, (error, results) => {
    if (error) {
      throw error;
    }
    console.log(new_buy);
    res.send()
  })
});

router.get('/property', function (req, res, next) {
  let id = req.query.id;
  var property_buy = $sql.buy.property + " where id = '" + id + "'"
  conn.query(property_buy, (error, results) => {
    if (error) {
      throw error;
    }
    res.send() //这里发送一个json对象给前端
  })
});

router.post('/sold_old', function (req, res, next) {
  let hi = req.body.house_info;

  var select_old = $sql.house.select_old_house;  
  conn.query(select_old, (error, results) => {
    if(error) {
      throw error;
    }
    const id = parseInt(results[results.length-1].oid)
    const oid = (id+1).toString()
    
    var sold_old = "insert into oldhouse values('"+oid+"','"+hi.sellpoint+"','"+hi.picture+"','"+hi.price+"','"+hi.type+"','"+hi.narea+"','"+hi.direction+"','"+hi.xiaoqu+"','"+hi.floor+"','"+hi.year+"','"+hi.provice+"','"+hi.city+"','"+hi.area+"')"
    conn.query(sold_old, (error, results) => {
      if(error) {
        throw error
      }
      res.send() //这里发送一个json对象给前端
    })
  })
});

router.post('/sold_rent', function (req, res, next) {
  let hi = req.body.house_info;
  // console.log(hi);

  var select_rent = $sql.house.select_rent_house;  
  conn.query(select_rent, (error, results) => {
    if(error) {
      throw error;
    }
    const id = parseInt(results[results.length-1].rid)
    const rid = (id+1).toString()

    var sold_rent = "insert into renthouse values('"+rid+"','"+hi.picture+"','"+hi.price+"','"+hi.mode+"','"+hi.type+"','"+hi.narea+"','"+hi.direction+"','"+hi.floor+"','"+hi.floorsum+"','"+hi.decoration+"','"+hi.xiaoqu+"','"+hi.addr+"','"+hi.provice+"','"+hi.city+"','"+hi.area+"')"
    conn.query(sold_rent, (error, results) => {
      if(error) {
        throw error
      }
      res.send() //这里发送一个json对象给前端
    })
  })
});

router.post('/add_proj', function (req, res, next) {
  let hi = req.body.house_info;
  // console.log(hi);

  var select_project = $sql.house.select_project;  
  conn.query(select_project, (error, results) => {
    if(error) {
      throw error;
    }
    const id = parseInt(results[results.length-1].id)
    const pid = (id+1).toString()

    var add_proj = "insert into project values('"+pid+"','"+hi.provice+"','"+hi.city+"','"+hi.area+"','"+hi.price+"','"+hi.housetype+"','"+hi.selladdr+"','"+hi.housenum+"','"+hi.phone+"','"+hi.projname+"','"+hi.projaddr+"','"+hi.devpeople+"','"+hi.picture+"')"
    conn.query(add_proj, (error, results) => {
      if(error) {
        throw error
      }
      res.send() //这里发送一个json对象给前端
    })
  })
});

router.post('/add_new', function (req, res, next) {
  let hi = req.body.house_info;
  // console.log(hi);

  var select_new = $sql.house.select_new_house;  
  conn.query(select_new, (error, results) => {
    if(error) {
      throw error;
    }
    const id = parseInt(results[results.length-1].hid)
    const hid = (id+1).toString()

    var add_new = "insert into newhouse values('"+hid+"','"+hi.pid+"','"+hi.type+"','"+hi.narea+"','"+hi.floor+"','"+hi.price+"','"+hi.picture+"')"
    conn.query(add_new, (error, results) => {
      if(error) {
        throw error
      }
      res.send() //这里发送一个json对象给前端
    })
  })
});

module.exports = router;