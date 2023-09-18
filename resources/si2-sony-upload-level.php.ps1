# Stealth Inc 2 PlayStation
# Level Upload

function POST-si2-steam-upload-level.php {
    Param($Context)

    $levelname = FromBase64String($Context.Request.QueryString.Item("levelname"))
    $username = FromBase64String($Context.Request.QueryString.Item("username"))
    $uid = $Context.Request.QueryString.Item("uid")
    $size = $Context.Request.QueryString.Item("size")

    Write-Host ("Levelname: $levelname")
    Write-Host ("Username: $username")
    Write-Host ("Uid: $uid")
    Write-Host ("Size: $size")

    if (!(Test-Path "uploads\s2")) {
        New-Item -ItemType Directory -Path "uploads\s2"
    }
    $Context.Request.RawContent | `
    Set-Content -Path "uploads\s2\$(Get-Date -Format "yyyy-MM-dd-HH-mm-ss") - $username - $levelname.lvl"

    " success"
    # " dupe"
    # " fail"
    # " blocked"
}

function FromBase64String {
    param($string)
    return [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($string))
}
