exports.about = function(){
    console.log('Questo modulo è importantissimo!!!');
}

exports.urlRequestManage = function(relPath){
	var tmp = relPath.split('?');
	console.log(tmp[1]);
	return tmp[0];
} 
