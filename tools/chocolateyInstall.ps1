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

  checksum      = '42cbc868c6a97c58a0e5f1b508416ee99e693e664d47cb4f9e2570356d6ecde9'
  checksumType  = 'sha256'
  checksum64    = '056035bd05327a4d5063c0d2ce7958872684d6f8c1f49c40d9d601d2cb87da9d'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
