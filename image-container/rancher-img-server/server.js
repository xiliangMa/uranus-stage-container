var express = require('express');
var proxy = require('http-proxy-middleware');

const port = 3300;

// proxy middleware options
var options = {
    target: 'https://----->TARGET_IP<-----',
    changeOrigin: true,
    secure: false,
    auth: '----->AUTH<-----',
    pathRewrite: {
        '^/rancher-img': '/v3/templates'
    }
}

var imgProxy = proxy(options);

var app = express();
app.use('/rancher-img',imgProxy);

app.listen(port, function () {
    console.log("The server is running at http://localhost:", port);
});
