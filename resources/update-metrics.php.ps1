# Stealth Bastard Deluxe
# Community Stats Upload

function GET-update-metrics.php {
    Param($Context)

    $deaths = $Context.Request.QueryString.Item("deaths")
    $levels_downloaded = $Context.Request.QueryString.Item("levels_downloaded")
    $levels_completed = $Context.Request.QueryString.Item("levels_completed")
    $time_played = $Context.Request.QueryString.Item("time_played")
    $levels_uploaded = $Context.Request.QueryString.Item("l_levels_uploaded")
    $user = $Context.Request.QueryString.Item("user")

    Write-Host ("User: $user")
    Write-Host ("Levels uploaded: $levels_uploaded")
    Write-Host ("Levels downloaded: $levels_downloaded")
    Write-Host ("Levels completed: $levels_completed")
    Write-Host ("Time played: $time_played")
    Write-Host ("Deaths: $deaths")

    ""
}
