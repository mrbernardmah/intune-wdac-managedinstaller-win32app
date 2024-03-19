#Apply the App Locker policy for Managed Installer
Set-AppLockerPolicy -XmlPolicy .\managedinstaller.xml -Merge -ErrorAction SilentlyContinue

#Start the App Identity Service (required for AppLocker to function) and change startup to Automatic
sc.exe config appidsvc start= auto