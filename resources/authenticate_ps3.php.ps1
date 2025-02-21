# Stealth Inc 2 PlayStation
# Authenticate (PlayStation 3)

function POST-authenticate_ps3.php {
    Param($Context)

    Write-Host ("Data: " + $Context.Request.RawContent)
    
    "0"
}
