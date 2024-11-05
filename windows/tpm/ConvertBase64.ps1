# replace file path with your own
[Convert]::ToBase64String([IO.File]::ReadAllBytes("C:\Path\To\Your\Script.ps1"))
