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

  checksum      = '809B07C506F8905D3804EC9F2AFE2CFD6FAFB295A4F990264F57BE9BF020CF21'
  checksumType  = 'sha256'
  checksum64    = '5D89BAD43A4A7641AC827C1492682E97936711F4077255D2FEFD94D0C387A831'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
