# migrate_files_to_azure_azcopy
copy local files to Blob storage Account using AzCopy
Powershell Script to copy local files to Blob storage Account using AzCopy

How to Download AzCopy

#AzCopy is a command-line utility, to download Azure azcopy executable visit Microsoft website https://docs.microsoft.com/en-us/azure/storage/common/storage-use-azcopy-v10

Authenticate your User ID
#Open Powershell teminal and locate to the azcopy directory from Above. Now Authenticate yourself using below command and follow instructions
#.\azcopy.exe login --tenant-id xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

Permission Error
#In case you are getting permission error that means user id dont have permission to Azure Storage account or SAS key expired, to get fresh SAS key use below steps.

Configure powershell script
#In Case your SAS key expired go to storage account "mystorageaccount" and left hand pane search for "Shared access signature" and replace this key with $SAS variable in powershell script.

How to execute powershell script
#Once you have made the changes to ps file use below command to execute your file:-
. "C:\copytoazure.ps1"

Demo Output
PS C:\AzCopy> .\copytoazure.ps1
Please authenticate using .\azcopy login to avoid permission error...
Current Directory..
C:\FMAG\TempAZ\Sombody.txt
1-Discovery
2-Envestnet
3-JPM
4-Broadridge
Choose Datasource from Above...: 2
Your Choice is Envestnet
-------------------------------
1-xxxxx/mf_1/
2-xxxxx/mf_2/
3-xxxxx/sma_1/
4-xxxxx/sma_2/
5-xxxxx/manage_1/
-------------------------------
Please Choose entity name...: 3
Your Choice is 3-xxxxx/sma_1/ Folder!
Target Location =
https://wwwwwwwwwwwwww.blob.core.windows.net/wwwwwwww-zone/wwwwwww/www_wwww/?wwwwwwwwwwwwwwwwwwww
