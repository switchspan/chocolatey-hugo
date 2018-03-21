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

  checksum      = 'a10a3648d33cb957ee213adaf6b840a2be261bbd00281929a4903da6bb2b67c0'
  checksumType  = 'sha256'
  checksum64    = '88cbdba01b1305134369754ad9c9005af68aaa45e0ce5195ead2264ab5bb3407'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
