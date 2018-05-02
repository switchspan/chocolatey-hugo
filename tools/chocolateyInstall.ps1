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

  checksum      = '8490aba063e8d93c8079dbf3c274f9e1ae766791f2e942a1316be7b0551b529f'
  checksumType  = 'sha256'
  checksum64    = 'c2122c526863ffda956c7447dd1bc9481b0ebb707d3122c4a538c25baf14d657'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
