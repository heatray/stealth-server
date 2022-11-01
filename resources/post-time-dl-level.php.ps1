# Stealth Bastard Deluxe
# Free Level Leaderboard Upload

function GET-post-time-dl-level.php {
    Param($Context)

    $table = $Context.Request.QueryString.Item("table")
    $username = $Context.Request.QueryString.Item("username")
    $time = $Context.Request.QueryString.Item("time")

    Write-Host ("Table: $table`nUsername: $username`nTime: $time")

    "done"
}
