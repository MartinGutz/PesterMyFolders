# PesterMyFolders
PowerShell scripts to grab a list of folders. The PowerShell Pester scripts will then test to make sure the files exist.

# Description
These are two PowerShell scripts. They are used to gather a list of folders and place the list of folders into JSON files.

Then you run the accompanying script to test and verify that these important folders are located on the second server.

# Instructions

* Move the GatherTemplates folder to the server and create a templates folder and run the CreateTemplate.ps1
* NOTE: An example.bat file is provided which you can edit.
* Copy the JSON folders to the InvokePester folder under a new folder named Templates.
* Run the PesterMyFolders.ps1 script to see if the folder structure is not correctly set up on the second server.
