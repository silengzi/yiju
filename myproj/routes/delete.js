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

router.get('/proj', function (req, res, next) {
  let ids = req.query.projId
  for(let item of ids) {
    // console.log(item);
    var delete_proj = $sql.buy.property + " where id = '" + item + "'"
    conn.query(delete_proj, (error, results) => {
      if (error) {
        throw error;
      }
    })
    var delete_new = $sql.buy.new + " where pid = '" + item + "'"
    conn.query(delete_new, (error, results) => {
      if (error) {
        throw error;
      }
    })
    res.send();
  }
})

router.get('/new', function (req, res, next) {
  let ids = req.query.newId
  // console.log(ids);
  for(let item of ids) {
    // console.log('new: ' + item);
    var delete_new = $sql.buy.new + " where hid = '" + item + "'"
    conn.query(delete_new, (error, results) => {
      if (error) {
        throw error;
      }
    })
    res.send();
  }
})

router.get('/old', function (req, res, next) {
  let ids = req.query.oldId
  for(let item of ids) {
    // console.log(item);
    var delete_old = $sql.buy.old + " where oid = '" + item + "'"
    conn.query(delete_old, (error, results) => {
      if (error) {
        throw error;
      }
    })
    res.send();
  }
})

router.get('/rent', function (req, res, next) {
  let ids = req.query.rentId
  for(let item of ids) {
    // console.log(item);
    var delete_rent = $sql.buy.rent + " where rid = '" + item + "'"
    conn.query(delete_rent, (error, results) => {
      if (error) {
        throw error;
      }
    })
    res.send();
  }
})

module.exports = router;