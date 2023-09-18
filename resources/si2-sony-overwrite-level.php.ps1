# Stealth Inc 2 PlayStation
# Level Overwrite Upload

function POST-si2-steam-overwrite-level.php {
    Param($Context)

    $levelname = FromBase64String($Context.Request.QueryString.Item("levelname"))
    $username = FromBase64String($Context.Request.QueryString.Item("username"))
    $uid = $Context.Request.QueryString.Item("uid")
    $size = $Context.Request.QueryString.Item("size")

    Write-Host ("Levelname: $levelname")
    Write-Host ("Username: $username")
    Write-Host ("Uid: $uid")
    Write-Host ("Size: $size")

    " success"
    # " fail"
}

function FromBase64String {
    param($string)
    return [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($string))
}
