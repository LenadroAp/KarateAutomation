Both the Web UI and Web Services exercises were made using the Karate Framework to showcase its versatility. They can be run by executing TestRunner.java in your preferred IDE or, for convenience, running RunAllTests.bat. To make this work, Maven and its path must be set up on your computer.

Since the "Create a user" scenario in Ui.feature may result in failure after executing a second time (as it can't create an existing user), you can edit ui.feature's background user to the one you desire for testing.

For the Web UI scenario, all the XPath files are stored in karate-config.js for easy maintenance.

If you want to edit the pet used for the Web Services feature, you can modify the testData.json file.

Previous execution results are stored in a folder called 'Reports'.
