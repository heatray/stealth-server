# Stealth Bastard Deluxe
# Login Steam User

function GET-validate-user.php {
    Param($Context)

    $user = $Context.Request.QueryString.Item("user")
    $pword = $Context.Request.QueryString.Item("pword")
    $dau = $Context.Request.QueryString.Item("dau")
    $mau = $Context.Request.QueryString.Item("mau")
    $month = $Context.Request.QueryString.Item("month")
    $version = $Context.Request.QueryString.Item("version")

    Write-Host ("User: $user")
    Write-Host ("Password: $pword")
    Write-Host ("Dau: $dau")
    Write-Host ("Mau: $mau")
    Write-Host ("Month: $month")
    Write-Host ("Version: $version")

    "validated"
    # "invalid"
}
