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

  checksum      = '5e5da00419ef280557a7cb6e84483fca7515dc7712a8bfe892d790d472e83eef'
  checksumType  = 'sha256'
  checksum64    = '907d0922488e40039a7078a89b83e9fa70312e3d6610a4067f491a629f46b315'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
