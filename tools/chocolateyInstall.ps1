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

  checksum      = 'c36b2c5ee1d7a5fd556f9c4dc22710dfe21c6048767898a74de09bad41a14505'
  checksumType  = 'sha256'
  checksum64    = '898bb17d023178040e0d8b748a762d092f3678528c4a44e07a9b56cfe7debfd8'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
