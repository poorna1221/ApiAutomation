$global:LatitudeDefault = '-33.925500' #code to read default values for Latitude
if (($global:Latitude = Read-Host "Press enter to accept default value $global:LatitudeDefault or please enter desired latitude") -eq '') 
{

$global:Latitude = $global:LatitudeDefault

} 

$global:LongitudeDefault = '151.186773' #code to read default values for Longitude
if (($global:Longitude = Read-Host "Press enter to accept default value $global:LongitudeDefault or please enter desired Logitude") -eq '') 
{

$global:Longitude = $global:LongitudeDefault

} 

$global:CountryCodeDefault = 'AU' #code to read default values for CountryCode
if (($global:CountryCode = Read-Host "Press enter to accept default value $global:CountryCodeDefault or please enter desired CountryCode") -eq '') 
{

$global:CountryCode = $global:CountryCodeDefault

} 

$global:PostCodeDefault = '2020' #code to read default values for PostCode
if (($global:PostCode = Read-Host "Press enter to accept default value $global:PostCodeDefault or please enter desired PostCode") -eq '') 
{

$global:PostCode = $global:PostCodeDefault

} 


$global:env = read-host "Please enter 1 for SIT. 2 for UAT. 3 for Prod. Defaulted to UAT environment"

$directorypath = (Get-Item -Path ".\" -Verbose).FullName
    switch($global:env) {
       1 {
       $global:env = "SIT.json"
       }
       2 {
       $global:env = "UAT.json"
       }
       3 {
       $global:env = "PROD.json"
       }
       
       default 
       {
       $global:env = "UAT.json" #If 1,2 or 3 or not provided as input defulat environment will be taken as UAT.
       }
}    

$global:EnvFolderPath =  $directorypath+"\Environments\"+$global:env
$global:GlobalVariablePath = $directorypath+"\GlobalVariables\globalvariable.json"



     If($global:env -eq "PROD.json" -or $global:env -eq "SIT.json" -or $global:env -eq "UAT.json") #If environment matches SIT,UAT Or Prod execute the collection in newman CLI
         { 
cmd /c  newman run Qantas_Apiautomation.postman_collection.json -e $global:EnvFolderPath --global-var PostCode=$global:PostCode --global-var CountryCode=$global:CountryCode --global-var latitude=$global:Latitude --global-var longitude=$global:Longitude -g $global:GlobalVariablePath -r htmlextra

write-host " QA challenge completed. Results will be stored at " $directorypath "\newman folder" -ForegroundColor Green
 
Start-Sleep -s 4



$ReportsPath = $directorypath+"\newman\"
$latest = Get-ChildItem -Path $ReportsPath | Sort-Object LastAccessTime -Descending | Select-Object -First 1
$ReportsPath+$latest

Invoke-Item $ReportsPath$latest #Open the Result
}

else
{

 write-host "Please re execute the powershell file and enter values as 1 or 2 or 3 for respective environments" -ForegroundColor Red
       Start-Sleep -s 10
}