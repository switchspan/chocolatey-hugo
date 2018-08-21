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

  checksum      = '34af909831fe2b6918ee6ebb80d8c02ccd912434ee6b1f892262735238eceb94'
  checksumType  = 'sha256'
  checksum64    = '580451be7f3a9fbd64992f6aada824b345813a9f3fc0284342dc3ecd29292560'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
