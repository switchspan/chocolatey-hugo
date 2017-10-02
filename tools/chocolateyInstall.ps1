$ErrorActionPreference = 'Stop'

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/spf13/hugo/releases/download/v$($env:ChocolateyPackageVersion)/hugo_$($env:ChocolateyPackageVersion)_Windows-32bit.zip"
$url64      = "https://github.com/spf13/hugo/releases/download/v$($env:ChocolateyPackageVersion)/hugo_$($env:ChocolateyPackageVersion)_Windows-64bit.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64

  checksum      = 'e354f85797c8c47785a57c07ea6020accfaffe53403882a68496e17c533e8ae9'
  checksumType  = 'sha256'
  checksum64    = '13ab1f4ac2f77f33566d6e3b39ee3de45b0d746734cfe430c4dc754444bcf569'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
