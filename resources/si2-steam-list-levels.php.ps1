# Stealth Inc 2
# Level List

function GET-si2-steam-list-levels.php {
    Param($Context)

    $limit = $Context.Request.QueryString.Item("limit")

    Write-Host ("Limit: $limit")

    # CSV Format:
    #   id (int)
    #   username (base64)
    #   levelname (base64)
    #   stars (int)
    #   rated (int)
    [System.IO.File]::ReadAllBytes($(Resolve-Path "static\s2\levels.csv"))
}
