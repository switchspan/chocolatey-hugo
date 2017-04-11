chocolatey-hugo
===============

Chocolatey install for Hugo

## Modifying the package

- Edit the `hugo.nuspec` configuration file.
- Edit the `./tools/chocolateyInstall.ps1` install script
- You **must** save your files with *UTF-8* character encoding without BOM.

_Note:_ Make sure you install checksum (`choco install checksum`) and calculate checksums for the 32bit and 64bit copies of hugo in the [Install-ChocolateyZipPackage](https://chocolatey.org/docs/helpers-install-chocolatey-zip-package) command of the `chocolateyInstall.ps1` file.

## Build the package

- Run `choco pack` in the same directory as `hugo.nuspec`

_Note: If you are running this from a command prompt, you might want to run it as Administrator._

## Test the package

_Note: testing should probably be done on a Virtual Machine_
(See: https://github.com/chocolatey/chocolatey-test-environment)

- In the package directory, use:
  - `choco install hugo -s "$pwd" -f` (powershell)
  - `choco install hugo -s '%cd%' -f` (everywhere else)
- Or, use the full path:
  - `choco install hugo -source 'c:\path\to\package' -f`

## Publish the package to the Chocolatey community feed repository:
- `choco apikey -k [API_KEY_HERE] -source https://chocolatey.org/`
- `choco push hugo.[version num].nupkg -s https://chocolatey.org/` (package name can be omitted)

See the [Chocolatey Packages Quick Start][quickstart] for more information.

[quickstart]: https://github.com/chocolatey/choco/wiki/CreatePackagesQuickStart