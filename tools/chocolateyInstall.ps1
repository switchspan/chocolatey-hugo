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

  checksum      = 'e7193c9b6188a8bc808997c81d7843773ce14702757c8cda8457870ad33b1d6d'
  checksumType  = 'sha256'
  checksum64    = '348f6010d3d6e7bf2271938a0276678d1a4b3af09d5c5256d30b91e19c9c6f72'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
