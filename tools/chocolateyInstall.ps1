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

  checksum      = '8cf70c18417379994e7a38f896fa4cbc494bfa9c1f6058f6d839605cf3ab098c'
  checksumType  = 'sha256'
  checksum64    = 'a2576958b5ca021a712a78a8ada61033dd1809c7cc630ff5e992e6aed4b9a58b'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
