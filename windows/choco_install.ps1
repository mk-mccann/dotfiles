# Install choco .exe and add choco to PATH
$ChocoInstalled = $false
if (Get-Command choco.exe -ErrorAction SilentlyContinue) {
    $ChocoInstalled = $true
}
else {
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

ECHO Installing apps

ECHO Configure chocolatey
choco feature enable -n allowGlobalConfirmation

# Install all the packages
# Browsers
choco install firefox -y

# Text editors / IDEs
choco install notepadplusplus -y
choco install obsidian -y

# Dev tools
choco install git -y
choco install miniconda -y
choco install julia -y
choco install r -y
choco install r.studio -y
choco install vscode -y

# Media
choco install calibre -y
choco install gimp -y
choco install inkscape -y
choco install handbrake.install -y
choco install spotify -y
choco install vlc -y

# Utilities + other
choco install 7zip.install -y
choco install blender -y
choco install dropbox -y
choco install f.lux -y
choco install foxitreader -y
choco install garmin-express -y
choco install irfanview -y
choco install nordvpn -y
choco install onetastic -y
choco install pdfsam.install -y
choco install powertoys -y
choco install slack -y
choco install teamviewer -y
choco install whatsapp -y
choco install zoom -y
choco install zotero -y

choco feature disable -n allowGlobalConfirmation