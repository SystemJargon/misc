# Determine size of a file or total size of a directory
Set-Alias fs Get-DiskUsage

# Empty the Recycle Bin on all drives
Set-Alias emptytrash Empty-RecycleBin

# Cleanup old files all drives
Set-Alias cleandisks Clean-Disks

# Reload the shell
Set-Alias reload Reload-Powershell

# http://xkcd.com/530/
Set-Alias mute Set-SoundMute
Set-Alias unmute Set-SoundUnmute

# Update installed Ruby Gems, NPM, and their installed packages.
Set-Alias update System-Update

# Set GVim as default vim
Set-Alias vim gvim

# use grep in windows kind-of
New-Alias grep findstr

# notepad++ alias
$npp = "C:\Program Files (x86)\Notepad++\Notepad++.exe"
