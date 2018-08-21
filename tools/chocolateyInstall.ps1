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

  checksum      = '3b710735b6ea15380b480fb7727b1d814f1a880faf78f610a714d45ddfd98a43'
  checksumType  = 'sha256'
  checksum64    = '9e528cf75dcc58784602bbbae1d2eb9831ac5137ee032ea1019161e721df9417'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
