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

  checksum      = 'ee8be6b54e55203787ef3e15718bb9205354863ec2990c0f665dc510fceefad2'
  checksumType  = 'sha256'
  checksum64    = 'e24eb8bfe23995883ce4b9e6c6ef030be4354060fe9b1cdbb4eb293bbc69b2f6'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
