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

  checksum      = '9dbd5f8ac2bf4d81932cbe692326521fe8e551929325b45ce69f7004f9b8700b'
  checksumType  = 'sha256'
  checksum64    = '8a70bdd5dbe1c1d37cbfa4884a831093aeada8f0d2472333508b7bdafa36c05e'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
