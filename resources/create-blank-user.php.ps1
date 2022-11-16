# Stealth Bastard Deluxe
# Create Guest User (GOG)

function GET-create-blank-user.php {
    Param($Context)

    $dau = $Context.Request.QueryString.Item("dau")
    $mau = $Context.Request.QueryString.Item("mau")
    $month = $Context.Request.QueryString.Item("month")
    $version = $Context.Request.QueryString.Item("version")

    Write-Host ("Dau: $dau`nMau: $mau`nMonth: $month`nVersion: $version")

    "newuid"
}
