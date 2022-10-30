# Stealth Inc 2
# Level Download

$header = "id", "username", "levelname", "stars", "rated"
$levels = Import-Csv -Path "static\s2\levels.csv" -Header $header

function GET-si2-steam-download-level.php {
    Param($Context)

    $id = $Context.Request.QueryString.Item("id")
    $current = $levels | Where-Object -Property id -eq $id
    $username = $(FromBase64String($current.username))
    $levelname = $(FromBase64String($current.levelname))

    Write-Host ("Id: $id")
    Write-Host ("Username: $username")
    Write-Host ("Levelname: $levelname")

    # one space should be added to response, but idk what it is for
    [byte[]]32 + [System.IO.File]::ReadAllBytes($(Resolve-Path "static\s2\levels\$id.lvl"))
}

function FromBase64String {
    param($string)
    return [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($string))
}
