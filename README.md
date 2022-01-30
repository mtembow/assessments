For RobotWebFramework:

Install Python; 
Install Pycharm IDE; 
Install Selenium; 
Install robot framework; 
Install Robotframework selenium Library; 
To execute: Go to the TestCases folder and open the terminal then type: robot TC1.robot

For RobotAPIFramework

Install python; 
Using your favarite IDE e.g PhyCharm; 
To run the test cases, double click to open TC1 and right click then select Open in Terminal; 
Depending on where you saved the code type: robot TestCases/*.robot -- this will execute all the test cases; 
To run single test case e.g test case 1: robot TestCaess/TC1_Get_All_Breeds.robot; 
You can view the report on file: report.html by right click on it then Open in Browser then chrome; 
You can view the log on file: log.html by right click on it then Open in Browser then chrome; 
Public API - https://dog.ceo/dog-api/ API perform the following calls; 
Perform an API request to produce a list of all dog breeds - TC1_Get_All_Breeds.robot o Using code, verify “retriever” breed is within the list - TC2_Verify_Retriver.robot; 
Perform an API request to produce a list of sub-breeds for “retriever” - TC3_Sub_Breeds.robot o Perform an API request to produce a random image / link for the sub-breed “golden” - TC4_Random_Image
