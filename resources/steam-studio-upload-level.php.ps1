# Stealth Bastard Deluxe
# Level Upload (Steam/GOG)

function POST-steam-studio-upload-level.php {
    Param($Context)

    $username = FromBase64String($Context.Request.QueryString.Item("username"))
    $levelname = $Context.Request.QueryString.Item("levelname")
    $size = $Context.Request.QueryString.Item("size")
    $uid = $Context.Request.QueryString.Item("uid")

    Write-Host ("Levelname: $levelname")
    Write-Host ("Username: $username")
    Write-Host ("Uid: $uid")
    Write-Host ("Size: $size")

    if (!(Test-Path "uploads\s2")) {
        New-Item -ItemType Directory -Path "uploads\s1"
    }
    $Context.Request.RawContent | `
    Set-Content -Path "uploads\s1\$(Get-Date -Format "yyyy-MM-dd-HH-mm-ss") - $username - $levelname.lvl"

    "success"
    # "fail"
    # "blocked"
}

function FromBase64String {
    param($string)
    return [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($string))
}
