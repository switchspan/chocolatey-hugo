#NOTE: Please remove any commented lines to tidy up prior to releasing the package, including this one
$version = '0.17'
$packageName = 'hugo'
$installerType = 'exe'
$url = 'https://github.com/spf13/hugo/releases/download/v0.17/hugo_0.17_Windows-32bit.zip' # download url
$url64 = 'https://github.com/spf13/hugo/releases/download/v0.17/hugo_0.17_Windows-64bit.zip' # 64bit URL here or remove - if installer decides, then use $url
$silentArgs = '/s' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" # try any of these to get the silent installer #msi is always /quiet
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$destinationPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage "$packageName" "$url" "$destinationPath" "$url64"

try {
  # Rename the downloaded hugo file name to a sane filename
  Get-ChildItem -Path "$($destinationPath)\*.exe" | Rename-Item  -NewName "hugo.exe"

  # the following is all part of error handling
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
