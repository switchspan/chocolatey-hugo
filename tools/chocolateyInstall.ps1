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

  checksum      = 'cc376caf69cf60f4b439f785d28ed39d3d519b27aa475a2d33d19a3466c2a950'
  checksumType  = 'sha256'
  checksum64    = '96468a21c55fd0cac42acc4cbe6c2f436ebac700dd70c858785e49c7adc89511'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
