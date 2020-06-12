function CreateDir ($dir) {
  if (Test-Path $dir) { return }
  New-Item $dir -ItemType Directory | Out-Null
}

function Error ($message) {
  Write-Error $message
  Pop-Location
  exit
}

$wslDir = "D:\WSL"
$distroName = "Ubuntu-18.04"
$packagePath = Join-Path $wslDir "$distroName.appx"
$distroPath = Join-Path $wslDir $distroName

CreateDir $wslDir

if (!(Test-Path $packagePath)) {
  $packageUri = "https://aka.ms/wsl-ubuntu-1804"
  Invoke-WebRequest -Uri $packageUri -OutFile $packagePath -UseBasicParsing
}

if (Test-Path $distroPath) {
  Error "Folder $distroName already exists"
}

Expand-Archive $packagePath $distroPath

wsl --unregister $distroName | Out-Null

$launcherPath = Join-Path $distroPath "ubuntu1804.exe"
. $launcherPath

