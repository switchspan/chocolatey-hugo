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

  checksum      = '474a738baee19decc0e603426ac0eb72b6bc5354d9b3b91029048b5f99fa4074'
  checksumType  = 'sha256'
  checksum64    = 'f961063a4a29ba7383c2d27c46898143e7423680aae1386c3e1913c32ffcb5e1'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
