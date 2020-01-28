#Replace below folder location with your azcopy.exe folder location
cd C:\FMAG\AzCopy\azcopy_windows_amd64_10.3.4\azcopy_windows_amd64_10.3.4
#log file
$logfile="C:\AzCopy\azcopy_windows_amd64_10.3.4\azcopy_windows_amd64_10.3.4\azcopy.log";
#$SOURCE="C:\TempAZ\Sombody.txt";
$SOURCE=Read-Host "Enter file you want to upload to Azure..."
if (!(Test-Path $SOURCE)) {
  Write-Warning "$userFile absent from locations"
  exit
}
$DMZ_LOCATION='https://xxxxxx.blob.core.windows.net/xxxxx-zone/';
$SAS="?sv=======xxxxxxxxxxxxxxxxxxx"
Write-Output "Current Directory..";
Write-Output $SOURCE;
Write-Output "1-datasource-1";
Write-Output "2-datasource-2";
Write-Output "3-datasource-3";
Write-Output "4-datasource-4";
$USER_CHOICE=Read-Host "Choose Datasource from Above..."


If($USER_CHOICE -eq 1 ){
	Write-Output "Your Choice is datasource-1";
	$FOLDER="datasource-1/";
	Write-Output "Zone Location Folder = " $FOLDER
}

If($USER_CHOICE -eq 2){
	Write-Output "Your Choice is datasource-2";
	Write-Output "-------------------------------";
	Write-Output "1-entity1";
	Write-Output "2-entity2";
	Write-Output "-------------------------------";
	$ENTITY_CHOICE=Read-Host "Please Choose entity name..."
	If($ENTITY_CHOICE -eq 1){
		Write-Output "Your Choice is 1-entity1 Folder!";
		$FOLDER="datasource-2/1-entity1/";
	}
	ElseIf($ENTITY_CHOICE -eq 2){
		Write-Output "Your Choice is 2-entity2 Folder!";
		$FOLDER="datasource-2/2-entity2/";
	}
}

Write-Output "AZURE TARGET FOLDER..."
$TARGET = -join($DMZ_LOCATION,$FOLDER,$SAS)
Write-Output $TARGET
#uncomment below command once the $TARGET location found validated
.\azcopy cp $SOURCE $TARGET --log-level=INFO --recursive=TRUE --overwrite=TRUE --check-length=TRUE;
#cd C:\FMAG\AzCopy\
