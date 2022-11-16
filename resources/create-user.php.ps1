# Stealth Bastard Deluxe
# Create User (GOG)

function GET-create-user.php {
    Param($Context)

    $user = $Context.Request.QueryString.Item("user")
    $pword = $Context.Request.QueryString.Item("pword")
    $uid = $Context.Request.QueryString.Item("uid")
    $month = $Context.Request.QueryString.Item("month")
    $version = $Context.Request.QueryString.Item("version")

    Write-Host ("User: $user`nPassword: $pword`nUid: $uid`nMonth: $month`nVersion: $version")

    "newuid"
}
