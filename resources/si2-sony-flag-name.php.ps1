# Stealth Inc 2 PlayStation
# Level Flag Name

function GET-si2-sony-flag-name.php {
    Param($Context)

    $id = $Context.Request.QueryString.Item("id")
    $uid = $Context.Request.QueryString.Item("uid")

    Write-Host ("Id: $id`nUid: $uid")
}
