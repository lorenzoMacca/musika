var http = require('http');
var utils = require('./utils.js');
var fs = require('fs');

http.createServer(function (req, res) {
      res.writeHead(200, {'Content-Type': 'text/html'});
  
    var file = req.url.substr(1);
    if( file === 'index.html' ){
        fs.exists('./'+file, function(exists){
            if(exists){
                fs.readFile('./'+file, 'utf8', function(err,data){
                    /*console.log(data);*/
                    res.end(data);
                });
            }else{
                console.log('file not exists');   
            }
        });
    }else if( utils.urlRequestManage(file) === 'run_new_song' ){
            res.end('run new song!');
    }
    console.log(utils.urlRequestManage(file));
}).listen(1337, '192.168.0.12'); 
