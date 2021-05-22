Add-WindowsFeature Web-Server
Add-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value $($env:computername)
New-Item -ItemType directory -Path "C:\inetpub\wwwroot\images"
New-Item -ItemType directory -Path "C:\inetpub\wwwroot\render"
$imagevalue = "Images will be here : " + $($env:computername)
Add-Content -Path "C:\inetpub\wwwroot\images\test.htm" -Value $imagevalue
$videovalue = "Render images will be here: " + $($env:computername)
Add-Content -Path "C:\inetpub\wwwroot\render\test.htm" -Value $videovalue
