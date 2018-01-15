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

  checksum      = '642c0ca8473938975217becb7a27c4a55f0c470bb4c264b9aec2ab72319a6cbd'
  checksumType  = 'sha256'
  checksum64    = '08b765aae1ec3a3fbef11bca31998bdca98634c74f022fe180ea1f46612fc959'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
