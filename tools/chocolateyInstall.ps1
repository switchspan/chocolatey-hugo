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

  checksum      = '5F934C4B526C09D1A9AA31544C6EBC80812A0A2058D1304E855B8644DA2CEC48'
  checksumType  = 'sha256'
  checksum64    = '8315AD92DA1F21932F86E85B4A816108209AE8A305270E975B30396F67A37D19'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
