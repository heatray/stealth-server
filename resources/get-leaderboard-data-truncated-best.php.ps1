# Stealth Bastard Deluxe
# Free/Deluxe Level Leaderboard Download (Steam/GOG)

function GET-get-leaderboard-data-truncated-best.php {
    Param($Context)

    $table = $Context.Request.QueryString.Item("table")
    $username = $Context.Request.QueryString.Item("username")

    Write-Host ("Table: $table`nUsername: $username")

    # Tables:
    #   Campaign      - c_lb_{sector}_{chamber}
    #     Base Game               - 1-8
    #     The Teleporter Chambers - 9-10
    #   Free Levels   - lb_{id}
    #   Deluxe Levels - lb_dl_{id}
    # [System.IO.File]::ReadAllBytes($(Resolve-Path "static\s1\leaderboard\$table.csv"))
    [System.IO.File]::ReadAllBytes($(Resolve-Path "static\s1\leaderboard\example.csv"))
}
