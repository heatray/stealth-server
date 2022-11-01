# Stealth Bastard Deluxe
# Free Level List

function GET-list-levels-short.php {
    Param($Context)

    # CSV Format:
    #   id (int)
    #   username (string)
    #   levelname (string)
    #   size (int)
    #   user_id (int)
    #   stars (int)
    #   rated (int)
    [System.IO.File]::ReadAllBytes($(Resolve-Path "static\s1\free_levels.csv"))
}
