# Stealth Inc 2 PlayStation
# Authenticate (PlayStation)

function GET-validate-user.php {
    Param($Context)

    $issuer = $Context.Request.QueryString.Item("issuer")

    Write-Host ("Issuer: $issuer")

    ""
}
