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

  checksum      = '815d34850c0006b1ac5673183926cde138087cfdb0a2f63c58b2f2ba5557c652'
  checksumType  = 'sha256'
  checksum64    = 'bc97df98aa32c2d2500d6f56f19dfaa9c79dd70cc45b5070876b6823291aff2c'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
