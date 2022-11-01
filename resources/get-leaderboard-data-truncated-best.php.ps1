# Stealth Bastard Deluxe
# Free Level Leaderboard Download

function GET-get-leaderboard-data-truncated-best.php {
    Param($Context)

    $table = $Context.Request.QueryString.Item("table")
    $username = $Context.Request.QueryString.Item("username")

    Write-Host ("Table: $table`nUsername: $username")

    # Tables:
    #   Free Levels - lb_{id}
    # [System.IO.File]::ReadAllBytes($(Resolve-Path "static\s1\leaderboard\$table.csv"))
    [System.IO.File]::ReadAllBytes($(Resolve-Path "static\s1\leaderboard\example.csv"))
}
