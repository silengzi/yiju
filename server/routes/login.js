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
				userMessage.identification = results[0].identification;
				userMessage.addr = results[0].addr;
				userMessage.phone = results[0].phone;
				userMessage.realname = results[0].realname;
				userMessage.sex = results[0].sex;
				userMessage.manager = results[0].manager;
				userMessage.result = '0';	// 0 表示用户存在并且邮箱密码正确
			} else{
				userMessage.result = '1';	// 1 表示用户存在，但密码不正确
			}
		}
		/* let arr = [];
		arr[0] = userMessage */
		res.send(userMessage);
	})
});

router.post('/user', function (req, res, next) {
  let userinfo = req.body.userinfo;
	// console.log(userinfo);
	let u = userinfo.username,
			r = userinfo.realname,
			s = userinfo.sex,
			a = userinfo.addr,
			i = userinfo.identification,
			p = userinfo.phone;
	// console.log(userinfo.username);
	var userInfoSql = $sql.user.update + "realname = '" + r + "', sex = '" + s + "', addr = '" + a + "', identification = '" + i + "', phone = '" + p + "' where username = '" + u + "'"
	// console.log(userInfoSql);
  conn.query(userInfoSql, (error, results) => {
    if (error) {
      throw error;
    }
  })
	res.send("修改成功")
});

module.exports = router;