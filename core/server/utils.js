exports.about = function(){
    console.log('Questo modulo è importantissimo!!!');
}

exports.urlRequestManage = function(relPath){
    var tmp = relPath.split('?');
    return tmp[0];
} 
