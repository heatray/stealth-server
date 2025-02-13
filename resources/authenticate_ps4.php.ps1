# Stealth Inc 2 PlayStation
# Authenticate (PlayStation 4)

function POST-authenticate_ps4.php {
    Param($Context)

    $issuer = $Context.Request.QueryString.Item("issuer")

    Write-Host ("Issuer: $issuer")
    Write-Host ("Content: " + $Context.Request.RawContent)

    ""
}
