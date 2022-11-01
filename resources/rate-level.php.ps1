# Stealth Bastard Deluxe
# Free Level Rate

function GET-rate-level.php {
    Param($Context)

    $levelname = $Context.Request.QueryString.Item("levelname")
    $username = $Context.Request.QueryString.Item("username")
    $userscore = $Context.Request.QueryString.Item("userscore")

    Write-Host ("Levelname: $levelname")
    Write-Host ("Username: $username")
    Write-Host ("Userscore: $userscore")

    "success"
}
