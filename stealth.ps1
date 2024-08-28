Set-Location $PSScriptRoot
Import-Module "$PSScriptRoot\PServeREST\PServeREST.psm1" -Force
Invoke-PServeREST -ListenURI "http://+:80/" -ResourcesFolder "resources"
