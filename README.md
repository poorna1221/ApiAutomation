# Project Title

● RestAPI automation to get Current Weather Data based on Latitude and Longitude as well as based on Postcode.

## Framework Details

● Environment details are provided in the Environments folder with one file each for each environment, and file names are updated accordingly.
● Global varaibles like API key, latitude, Longitude are provided in GlobalVariables\globalvariable.json file
● Results will be store at newman folder with file name starts with Qantas_QAChallenge and respective time stamp based on execution.
● URL, Headers, request paylod are provided in the Qantas_Apiautomation.postman_collection.json file which will be provided as input to newman for execution.


### Running the tests

●	Right click on ExecuteWeatherAPIs.ps1 file which is located inside QantasApiAutomation folder->Run with Power shell


●	You will get message as Press enter to accept default value -33.925500 or please enter desired latitude. If you want to provide a specific location latitude you can provide it and API output will be based on provided latitude. If you do not want to provide any latitude and want to let the code take the defaulted latitude -33.925500, then just  press enter.

●	You will get message as Press enter to accept default value 151.186773 or please enter desired Longitude. If you want to provide a specific location Longitude you can provide it and API output will be based on provided Longitude. If you do not want to provide any Longitude and want to let the code take the defaulted Longitude 151.186773, then just  press enter.


●	You will get message as Press enter to accept default value AU or please enter desired CountryCode. If you want to provide a specific country code you can provide it and API output will be based on provided country code. If you do not want to provide any country code and want to let the code take the defaulted country code AU, then just  press enter.


●	You will get message as Press enter to accept default value 2020 or please enter desired post code . If you want to provide a specific post code you can provide it and API output will be based on provided postcode. If you do not want to provide any post code and want to let the code take the defaulted postcode 2020, then just  press enter.


●	Provide 1,2 or 3 to select respective environment.

●	Program take around 10 seconds and reports will be stored in newman folder, and also report will be opened automatically for easy of access to user.


#### Prerequisites

●   I assume following software's are installed on the machine where this project will be executed.

●	Postman
●	Node.js
●	Npm (command to install npm[npm install -g npm])
●	Newman (command to install newman[npm install -g newman])
●	Newman html extra reports (command to install npm[npm install -g newman-reporter-htmlextra])
●	Powershell

##### Role Applied at Qantas

Senior QA Automation Engineer


