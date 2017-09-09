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

  checksum      = '72ce595aeed787c94b7ed89e6beb074e432a6849426196d39e4af8d63731dbb8'
  checksumType  = 'sha256'
  checksum64    = '50c415eed9fcaff2371b8de8e357f2b51cf478861e27debfae0e8d296f131350'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
