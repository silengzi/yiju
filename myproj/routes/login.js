const models = require('../public/javascripts/db');
const express = require('express');
const router = express.Router();
const mysql = require('mysql');
const $sql = require('../public/javascripts/sqlMap');

const conn = mysql.createConnection(models.mysql);
conn.connect(() => {
  console.log('数据库连接成功');
});

router.all('*', (req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*'); // 解决跨域
  next();
})

// 登录接口
router.post('/',(req,res)=>{
	const user = req.body;
	const sel_email = $sql.user.select + " where email = '" + user.email + "'";
	conn.query(sel_email, user.email, (error, results)=>{
		if (error) {
			throw error;
		}
		let userMessage = {
			username: '请登录',
			result: ''
		}

		if (results[0] === undefined) {
			userMessage.result = '-1';	// -1 表示查询不到，用户不存在，即邮箱填写错误
		} else{
			if (results[0].email == user.email && results[0].password == user.password) {
				userMessage.username = '' + results[0].username;
				userMessage.result = '0';	// 0 表示用户存在并且邮箱密码正确
			} else{
				userMessage.result = '1';	// 1 表示用户存在，但密码不正确
			}
		}
		res.send(userMessage);
	})
});

module.exports = router;