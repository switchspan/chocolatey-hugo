"Running tests"
$ErrorActionPreference = "Stop"

"TEST: Installation of package should work"
choco install hugo -s "$pwd" -y -f
try {
  hugo version
  Write-Host "PASS: hugo found"
} catch {
  Write-Error "FAIL: hugo not found"
}

"TEST: Uninstall show remove the binary"
choco uninstall hugo -y
try {
  hugo version
  Write-Error "FAIL: hugo binary still found" 
} catch {
  Write-Host "PASS: hugo not found"
}

"TEST: Finished"