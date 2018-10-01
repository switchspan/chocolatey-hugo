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

  checksum      = '5853d9e9b03a041a7417688123a978506905a4285576c99213cacb5f919afc34'
  checksumType  = 'sha256'
  checksum64    = '0fd2587a27379d1962df1de8f304e7f1f17a90b54358ccc8cf58eadc0fe813c2'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
