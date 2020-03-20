var express = require('express');
var proxy = require('http-proxy-middleware');

const port = 3300;

// proxy middleware options
var options = {
    target: 'https://15.164.158.198',
    changeOrigin: true,
    secure: false,
    auth: 'token-nkv6b:hmxlmp6c98hklcp5qmmx9js8f6d48kcjptl4k4gc2wwrnddmsjtfwc',
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
