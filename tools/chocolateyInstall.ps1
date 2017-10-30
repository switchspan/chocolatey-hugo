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

  checksum      = '9348c0961d08583cb8fab8d0559ba0a66a4cfc887bfee13a5acd2b65aef44841'
  checksumType  = 'sha256'
  checksum64    = '6162c09ef1ae62cecdb84390b273ba2948374b7169091cc25aca6214cbc6a4ba'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
