# Install choco .exe and add choco to PATH
$ChocoInstalled = $false
if (Get-Command choco.exe -ErrorAction SilentlyContinue) {
    $ChocoInstalled = $true
}
else {
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

# Install all the packages
# Browsers
choco install brave -a
choco install firefox -a

# Text editors / IDEs
choco install miktex -a
choco install notepadplusplus -a
choco install obsidian -a
choco install pandoc - a
choco install vscode -a

# Dev tools
choco install git -a
choco install r -a
choco install r.studio -a

# Media
choco install gimp -a
choco install handbrake.install -a
choco install spotify -a
choco install vlc -a

# Utilities + other
choco install 7zip.install -a
choco install blender -a
choco install dropbox -a
choco install f.lux -a
choco install foxitreader -a
choco install garmin-express -a
choco install irfanview -a
choco install onetastic -a
choco install pdfsam.install -a
choco install slack -a
choco install teamviewer -a
choco install whatsapp -a
choco install zoom -a
choco install zotero -a