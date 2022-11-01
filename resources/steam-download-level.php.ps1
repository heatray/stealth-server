# Stealth Bastard Deluxe
# Deluxe Level Download

$header = "id", "username", "levelname", "size", "uid", "stars", "rated"
$levels = Import-Csv -Path "static\s1\deluxe_levels.csv" -Header $header

function GET-steam-download-level.php {
    Param($Context)

    $id = $Context.Request.QueryString.Item("id")
    $current = $levels | Where-Object -Property id -eq $id
    $levelname = $current.levelname
    $username = $(FromBase64String($current.username))

    Write-Host ("Id: $id")
    Write-Host ("Levelname: $levelname")
    Write-Host ("Username: $username")

    # one space should be added to response, but idk what it is for
    [byte[]]32 + [System.IO.File]::ReadAllBytes($(Resolve-Path "static\s1\levels\deluxe\$id.lvl"))
}

function FromBase64String {
    param($string)
    return [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($string))
}
