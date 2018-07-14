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

  checksum      = '0660e331eb6345a00d5b4d6e719bf06c1c91de91b5ef65d309b8ed602ab89188'
  checksumType  = 'sha256'
  checksum64    = 'b16903f0221f4eb4b7718cc2bd0358af76227891a0d5113875dfff4dac3daf30'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
