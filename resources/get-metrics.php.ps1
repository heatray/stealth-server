# Stealth Bastard Deluxe
# Community Stats Download

function GET-get-metrics.php {
    Param($Context)

    # CSV Format:
    #   online_deaths
    #   online_downloads
    #   online_completed
    #   online_time
    #   online_users
    #   online_levels
    [System.IO.File]::ReadAllBytes($(Resolve-Path "static\s1\metrics.csv"))
}
