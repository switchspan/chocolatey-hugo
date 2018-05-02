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

  checksum      = 'a2e087fabf6bd073f6f0d6d921f09008ce9861c455ab316ea98732b7aa30e4b4'
  checksumType  = 'sha256'
  checksum64    = '1d28d2881f9940b8c7c62a144e41296633c4b57bab1443d38861044289ff39ea'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
