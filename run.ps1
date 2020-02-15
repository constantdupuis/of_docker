# create arguments base on current location
$cwd = Get-Location
$cwd = "{0}/apps:/home/dev/OF/apps:rw" -f $cwd

#Write-Host $cwd

docker run -it -v $cwd of_emscript 