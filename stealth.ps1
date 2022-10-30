Set-Location $PSScriptRoot
Import-Module "$PSScriptRoot\PServeREST\PServeREST.psm1" -Force
Invoke-PServeREST -ListenURI "http://127.0.0.1:80/" -ResourcesFolder "resources"
