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

  checksum      = '24e6d8e216cc71802647a00438fe140776ee572ae7569c88d020221cae2dee70'
  checksumType  = 'sha256'
  checksum64    = '2a3724eeed5a15ff14b08794b5ae760b2df0c6305c57963f60958424de647c0f'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
