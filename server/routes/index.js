var express = require('express');
var router = express.Router();

const data = require('../public/data/city.js')

router.all('*', (req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*'); // 解决跨域
  next();
})

/* GET city message. */
router.get('/', function (req, res, next) {
  res.json(data) //这里发送一个json对象给前端
});

module.exports = router;
