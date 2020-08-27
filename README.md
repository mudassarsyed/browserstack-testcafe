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
		- sh trigger_tests_option3.sh <PROJECT_NAME> <BUILD_NAME>

In each of the below cases, every fixture runs in separate BrowserStack test sessions.

- trigger_tests_option1.sh: Every fixture runs on all 'N' browsers in parallel using a single TestCafe command. Then the next fixture is targeted.

- trigger_tests_option2.sh: All 'N' fixtures run on all 'N' browsers in parallel using a single TestCafe command. While using this option as-is, one needs to ensure that their BrowserStack plan has adequate parallels to support (#fixtures * #browsers)

- trigger_tests_option3.sh: All 'N' fixtures run on a single browser in parallel using a single TestCafe command. Then the next browser is targeted.


* Note: Local is on by default for all the tests, hence we can run local tests without having to start the local connection

* To set different capabilities you can refer https://github.com/DevExpress/testcafe-browser-provider-browserstack
* Documentation page of browserstack Testcafe https://www.browserstack.com/automate/testcafe
