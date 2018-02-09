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

  checksum      = 'daf16728d568aac83f74babf4394be7053e1413b4014224541efb15e291e1f53'
  checksumType  = 'sha256'
  checksum64    = 'f12ba5b49a5da5980509c566a28314799d41b03a1f83af14b6fb4d21234fbc9b'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
