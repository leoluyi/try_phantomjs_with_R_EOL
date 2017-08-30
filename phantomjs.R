library(rvest)

# example of using phantomjs for scraping sites that use a twisty maze
# of javascript to render HTML tables or other tags

# grab phantomjs binaries from here: http://phantomjs.org/
# and stick it somehere PATH will find it

# this example scrapes the user table from:

url <- "http://www.isurvey.com.tw/7_eol/2_detail.aspx?id=4075"

# write out a script phantomjs can process

writeLines(sprintf("var page = require('webpage').create();
page.open('%s', function () {
    console.log(page.content); //page source
    phantom.exit();
});", url), con="scrape.js")

# process it with phantomjs

system("phantomjs scrape.js")

