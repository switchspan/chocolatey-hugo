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

  checksum      = 'ebb2073927a3fb377da4c2f50af6638ce9f56ff83101d3c455e80b8953dee4d6'
  checksumType  = 'sha256'
  checksum64    = 'b6d6db48d1d7a72352e685805339df5f8e76ef24a1f9c19f50d75ee7a227a01e'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
