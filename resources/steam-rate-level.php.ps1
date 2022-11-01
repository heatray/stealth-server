# Stealth Bastard Deluxe
# Deluxe Level Rate

function GET-steam-rate-level.php {
    Param($Context)

    $levelname = $Context.Request.QueryString.Item("levelname")
    $username = FromBase64String($Context.Request.QueryString.Item("username"))
    $userscore = $Context.Request.QueryString.Item("userscore")

    Write-Host ("Levelname: $levelname")
    Write-Host ("Username: $username")
    Write-Host ("Userscore: $userscore")

    "success"
}

function FromBase64String {
    param($string)
    return [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($string))
}
