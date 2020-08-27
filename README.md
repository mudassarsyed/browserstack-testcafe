#Steps for executing TestCafe tests on BrowserStack

![BrowserStack Logo](https://d98b8t1nnulk5.cloudfront.net/production/images/layout/logo-header.png?1469004780)

* Install testcafe
	- npm install -g testcafe

* Install testcafe for browserstack
	- npm i -g testcafe-browser-provider-browserstack

* Set the Browserstack Username and Accesskey. For Testcafe, all the variables have to be set as environment variables
	- export BROWSERSTACK_USERNAME="<BROWSERSTACK_USERNAME>"
	- export BROWSERSTACK_ACCESS_KEY="<BROWSERSTACK_ACCESS_KEY>"

* Methods to run the tests:
	- Via command line
		- sh trigger_tests_option1.sh <PROJECT_NAME> <BUILD_NAME>
		- sh trigger_tests_option2.sh <PROJECT_NAME> <BUILD_NAME>

trigger_tests_option1.sh is useful when you want to run each fixture in your tests folder on multiple browsers. Each fixture will run in different BrowserStack test sessions.

trigger_tests_option2.sh is useful when you want to run multiple fixtures in your tests folder together on multiple browsers with a single command. In this case too, each fixture will run in different BrowserStack test sessions based on the concurrent run param -c <total_fixtures_count>.

* Note: Local is on by default for all the tests, hence we can run local tests without having to start the local connection

* To set different capabilities you can refer https://github.com/DevExpress/testcafe-browser-provider-browserstack
* Documentation page of browserstack Testcafe https://www.browserstack.com/automate/testcafe
