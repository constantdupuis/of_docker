# create arguments base on current location
$cwd = Get-Location
$cwd = "{0}/apps:/home/dev/OF/apps:rw" -f $cwd

#Write-Host $cwd

docker run -it --name of_emscript -v $cwd of_emscript 