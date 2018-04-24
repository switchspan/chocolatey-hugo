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

  checksum      = '1a993b23bceb9e7b55007104d0e649cdac8fc73033d58fd90a5dc5dc161495fd'
  checksumType  = 'sha256'
  checksum64    = '9a94c4e75ed95ecf0d4a3eab7d3b129cff1e518ec614e11b1630621a1fe59022'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
