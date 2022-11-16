# Stealth Bastard Deluxe
# Campaign Level Leaderboard Upload (GOG)

function GET-post-time.php {
    Param($Context)

    $table = $Context.Request.QueryString.Item("table")
    $username = $Context.Request.QueryString.Item("username")
    $time = $Context.Request.QueryString.Item("time")

    Write-Host ("Table: $table`nUsername: $username`nTime: $time")

    "done"
}
