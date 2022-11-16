# Stealth Bastard Deluxe
# Change User Password (GOG)

function GET-update-user-pword.php {
    Param($Context)

    $user = $Context.Request.QueryString.Item("user")
    $pword = $Context.Request.QueryString.Item("pword")
    $uid = $Context.Request.QueryString.Item("uid")

    Write-Host ("User: $user`nPassword: $pword`nUid: $uid")

    "success"
}
