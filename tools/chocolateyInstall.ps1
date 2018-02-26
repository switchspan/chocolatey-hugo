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

  checksum      = '86adc4b67ab88f484ab852991de021e94a3d1fab6627ec1c59450da8a908cce5'
  checksumType  = 'sha256'
  checksum64    = '500ed044a720b1a4b018a54ad9bf1323d2e385e27816e811145c4262305fcb79'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
