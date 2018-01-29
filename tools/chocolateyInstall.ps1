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

  checksum      = '528db75f76903b0f4d8c90a6007e475e20ab3aea137af56321696b5385c5f8b2'
  checksumType  = 'sha256'
  checksum64    = '8a172c932c7c6293bfc6b231e6e4b98a5fbb24ffad6410d7b26dd3d10c97f28a'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
