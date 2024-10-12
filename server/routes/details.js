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
  var rent_detail = $sql.detail.rent + " where rid = '" + id + "'"
  conn.query(rent_detail, (error, results) => {
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

router.get('/old', function (req, res, next) {
  let id = req.query.id;
  var old_detail = $sql.detail.old + " where oid = '" + id + "'"
  conn.query(old_detail, (error, results) => {
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

router.get('/new', function (req, res, next) {
  let id = req.query.id;
  var new_detail = $sql.detail.new + " where hid = '" + id + "'"
  conn.query(new_detail, (error, results) => {
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

router.get('/property', function (req, res, next) {
  let id = req.query.id;
  console.log(id);
  var property_detail = $sql.detail.property + " where id = '" + id + "'"
  conn.query(property_detail, (error, results) => {
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