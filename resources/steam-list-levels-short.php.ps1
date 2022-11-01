# Stealth Bastard Deluxe
# Deluxe Level List

function GET-steam-list-levels-short.php {
    Param($Context)

    # CSV Format:
    #   id (int)
    #   username (base64)
    #   levelname (string)
    #   size (int)
    #   user_id (int)
    #   stars (int)
    #   rated (int)
    [System.IO.File]::ReadAllBytes($(Resolve-Path "static\s1\deluxe_levels.csv"))
}
