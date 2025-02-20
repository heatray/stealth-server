# Stealth Inc 2 PlayStation
# Level Rate

function GET-si2-sony-rate.php {
    Param($Context)

    $id = $Context.Request.QueryString.Item("id")
    $userscore = $Context.Request.QueryString.Item("userscore")

    Write-Host ("Id: $id`nUserscore: $userscore")
}
