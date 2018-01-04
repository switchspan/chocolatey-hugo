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

  checksum      = '4823978dd679c6527345b956d317acb9cef4e77b44d365e5c9df3f24d55eb0ea'
  checksumType  = 'sha256'
  checksum64    = 'ab02034728df43978ab390348d47e3d29c85bdfb73e120ddb73fe2dce8eff77e'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
