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

  checksum      = '6b9506c72ee0f3186408b99b915cfc0944a521d4547deedf03e8968cea7909df'
  checksumType  = 'sha256'
  checksum64    = '015603fad3c6973de98e20474dd4ef91e0e51610edda9dfea8f2ba793fd0ef3b'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
