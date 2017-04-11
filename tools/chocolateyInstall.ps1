$ErrorActionPreference = 'Stop'; # stop on all errors
Install-ChocolateyZipPackage -packageName 'hugo' -UnzipLocation $(Split-Path -Parent $MyInvocation.MyCommand.Definition) -Url 'https://github.com/spf13/hugo/releases/download/v0.20/hugo_0.20_Windows-32bit.zip' -checksum 'B5AAAE719F01D997C63839077A8F19F599DC491277D2DECB6B5F4AA7C4887FAA' -checksumType 'sha256'-Url64 'https://github.com/spf13/hugo/releases/download/v0.20/hugo_0.20_Windows-64bit.zip' -checksum64 '0D74FFE4722BAA81626142FBFA75CBA75867F005E7F29EEEF227196E5FB5D2E4' -checksumType64 'sha256'

$hugoExe = Get-ChildItem $(Split-Path -Parent $MyInvocation.MyCommand.Definition) | Where-Object -Property Name -Match "hugo_[\d\.]+_windows_(386|amd64)\.exe"

if (-Not($hugoExe)) 
{
    Write-Error -Message "hugo exe is not found, please contact the maintainer of the package" -Category ResourceUnavailable
}
elseif ($hugoExe.Count -lt 1) 
{
    Write-Error -Message "more than one hugo exe found, please contact the maintainer of the package" -Category ResourceUnavailable
}

Write-Host "found hugo exe in $($hugoExe.FullName)"
Write-Host "attempting to rename it to hugo.exe" 
Rename-Item -Path $hugoExe.FullName -NewName hugo.exe