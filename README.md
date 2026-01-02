TrailQuest QA Automation – Robot Framework

This project contains automated test scripts for the TrailQuest web application, developed using Robot Framework and SeleniumLibrary.
The framework follows a Page Object Model (POM) and keyword-driven approach, making the test suite easy to read, maintain, and scale.



Project Directory Structure
```
    Automation/
    │
    ├── .venv/                          
    │
    ├── helpers/                        
    │
    ├── pages/                          # Page Object Model (POM) – page-level keywords
    │   ├── login_page.robot
    │   ├── signup_page.robot
    │   └── forgetpassword_page.robot
    │
    ├── Resources/
    │   ├── data/                       
    │   └── keyword/
    │       └── global_keyword.robot    # Reusable common keywords
    │
    ├── Result/
    │   ├── logs/                       # Execution logs
    │   └── screenshots/               # Failure screenshots
    │
    ├── Tests/                          # Executable test cases
    │   ├── Login_test.robot
    │   ├── sign-up.robot
    │   └── forget_password.robot
    
                       

   Framework Design
   Page Object Model (POM)

 - All page-specific locators and actions are placed inside the pages/ folder.

 - Improves reusability and maintainability.

 - Keyword-Driven Framework

 - Common actions are written as reusable keywords in global_keyword.robot.

 - Test cases remain clean and readable.

 - Screenshot on Failure

 - Screenshots are automatically captured when a test fails.

 - Stored under Result/screenshots/.

 - Test Coverage

 - The automation suite currently covers:

 - Login functionality

 - Sign-up functionality

 - Forgot Password functionality

 - Test cases for Project

Please follow the link to access the test cases for this project 

```
Test cases for Project

Please follow the link to access the test cases for this project 

```
https://docs.google.com/spreadsheets/d/1DcITWP5XWR2PiCb9Iz3F59EEr4km1HLBVEMYcLh7rqU/edit?gid=0#gid=0


