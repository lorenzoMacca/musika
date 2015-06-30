var express = require('express');
var router = express.Router();
var path    = require("path");

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express', message: 'Express summary' });
});

/* GET home page. */
router.get('/home', function(req, res, next) {
  res.sendFile(path.join(__dirname+'/pages/index.html'));
});

/* GET home page. */
router.get('/home/songYT/:id', function(req, res, next) {
	var sys = require('sys')
	var exec = require('child_process').exec;
	function puts(error, stdout, stderr) { sys.puts(stdout) }
	var tmp = req.path.split('/');
	exec("perl public/core/runVLC/RunVLC.pl https://www.youtube.com/watch?v="+tmp[3], puts);
	res.redirect('/home');
});

module.exports = router;
