$ErrorActionPreference = 'Stop'

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/gohugoio/hugo/releases/download/v$($env:ChocolateyPackageVersion)/hugo_$($env:ChocolateyPackageVersion)_Windows-32bit.zip"
$url64      = "https://github.com/gohugoio/hugo/releases/download/v$($env:ChocolateyPackageVersion)/hugo_$($env:ChocolateyPackageVersion)_Windows-64bit.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64

  checksum      = '362d917aa5be7b50fd82d18e02944c005f0f1b59eacd26682148ab4be4642fc3'
  checksumType  = 'sha256'
  checksum64    = '6fda01b1ec22797c8257fd2d74a7b9411ffd6ac24ea9758b26b60900261c7384'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs