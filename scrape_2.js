var page = require('webpage').create();
page.open('http://www.isurvey.com.tw/7_eol/2_detail.aspx?id=4074', function () {
    console.log(page.content); //page source
    phantom.exit();
});


var page = require('webpage').create();
page.open('http://www.isurvey.com.tw/7_eol/2_detail.aspx?id=4078', function () {
    console.log(page.content); //page source
    phantom.exit();
});
