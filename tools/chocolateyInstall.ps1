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

  checksum      = '640c76cf155eefb4d383d02077cde0b9e5bfc9d6db436fd2f7eeebe69fa50671'
  checksumType  = 'sha256'
  checksum64    = '9dfda1f11a2a237cbc8b2bca5cf55cc9be9182d3644e2518e5a8af3c11492fc7'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
