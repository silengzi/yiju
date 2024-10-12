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
  let addr = req.query.addr
  let history = $sql.history.select_history + " where area = '" + addr + "'";
  console.log(history);
  conn.query(history, (error, results) => {
    if (error) {
      throw error;
    }
    console.log(results);
    res.send(results) //这里发送一个json对象给前端
  })
});

module.exports = router;