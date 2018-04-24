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

  checksum      = 'e538b355cd3da2e027684cff4d2077889ad7e80b0a3cb2d74307b0dcef197fd1'
  checksumType  = 'sha256'
  checksum64    = '91c32066e7bcdba045f2620a41602a0b598465dd71ed2e142ef5e32545d40d9d'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
