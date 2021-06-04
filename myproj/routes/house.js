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

router.get('/', function (req, res, next) {
  let addr = req.query.addr;

  var newInfo = $sql.house.select_project + " where city = '" + addr + "'"
  conn.query(newInfo, (error, results) => {
    if (error) {
      throw error;
    }
    let arr = results
    for (let item of results) {
      item.picture = 'http://localhost:80/images/' + item.picture
    }
    res.send(arr) //这里发送一个json对象给前端
  })
});

router.get('/news', function (req, res, next) {
  let addr = req.query.addr;

  var newsInfo = $sql.house.select_new_house
  conn.query(newsInfo, (error, results) => {
    if (error) {
      throw error;
    }
    let arr = results
    for (let item of results) {
      item.picture = 'http://localhost:80/images/' + item.hpicture
    }
    res.send(arr) //这里发送一个json对象给前端
  })
});

router.get('/olds', function (req, res, next) {
  let addr = req.query.addr;

  var oldsInfo = $sql.house.select_old_house + " where city = '" + addr + "'"
  conn.query(oldsInfo, (error, results) => {
    if (error) {
      throw error;
    }
    let arr = results
    for (let item of results) {
      item.picture = 'http://localhost:80/images/' + item.picture
    }
    res.send(arr) //这里发送一个json对象给前端
  })
});

router.get('/rents', function (req, res, next) {
  let addr = req.query.addr;

  var rentsInfo = $sql.house.select_rent_house + " where city = '" + addr + "'"
  conn.query(rentsInfo, (error, results) => {
    if (error) {
      throw error;
    }
    let arr = results
    for (let item of results) {
      item.picture = 'http://localhost:80/images/' + item.picture
    }
    res.send(arr) //这里发送一个json对象给前端
  })
});

module.exports = router;