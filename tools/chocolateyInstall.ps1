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

  checksum      = 'ea67f201bf589b522b5303ef3825a1a19ffe0273c930fa0aa1ac2e31be7d9b1a'
  checksumType  = 'sha256'
  checksum64    = 'af90c6f269992a83bd5a6865c053ae2a58a0562f928061b064602ea5646937ed'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
