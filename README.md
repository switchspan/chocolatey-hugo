chocolatey-hugo
===============

Chocolatey install for Hugo

## Modifying the package

- Edit the `hugo.nuspec` configuration file.
- Edit the `./tools/chocolateyInstall.ps1` install script
- Edit the `./tools/chocolateyUninstall.ps1` uninstall script
- You **must** save your files with *UTF-8* character encoding without BOM.

_Note:_ Make sure you install checksum (`choco install checksum`) and calculate checksums for the 32bit and 64bit copies of hugo in the [Install-ChocolateyZipPackage](https://chocolatey.org/docs/helpers-install-chocolatey-zip-package) command of the `chocolateyInstall.ps1` file.

### Generating Checksum
Use the `checksum` tool to calculate the sha256 checksum for each of the zip files from the hugo releases:

`C:\DirectoryWhereHugoZipIsAt>checksum -f=".\hugo_0.25.1_Windows-32bit.zip" -t=sha256`

## Build the package

- Run `choco pack` in the same directory as `hugo.nuspec`

_Note: If you are running this from a command prompt/powershell prompt, you want to run it as Administrator._

## Test the package

_Note: testing should probably be done on a Virtual Machine_
(See: https://github.com/chocolatey/chocolatey-test-environment)

- In the package directory, use:
  - `choco install hugo -s "$pwd" -f` (powershell)
  - `choco install hugo -s '%cd%' -f` (everywhere else)
- Or, use the full path:
  - `choco install hugo -source 'c:\path\to\package' -f`

After executing the install, ensure that `hugo.exe` is installed by executing the following command from the command prompt: `hugo version`. If it is properly installed, you will see the current version of hugo.

### Test uninstallation
_Note: the Chocolatey install path on windows is typically `C:\ProgramData\chocolatey`_

- Execute the following command to uninstall hugo:
    + `choco uninstall hugo -y`

After executing the uninstall ensure that `hugo.exe` is not found in the Chocoloatey install path. You can also try running `hugo version` from the commandline to see if it is still installed


## Publish the package to the Chocolatey community feed repository:
- `choco apikey -k [API_KEY_HERE] -source https://chocolatey.org/`
- `choco push hugo.[version num].nupkg -s https://chocolatey.org/` (package name can be omitted)

See the [Chocolatey Packages Quick Start][quickstart] for more information.

[quickstart]: https://github.com/chocolatey/choco/wiki/CreatePackagesQuickStart
