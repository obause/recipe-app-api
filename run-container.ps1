param($param1, $param2)

if ($param1 -eq "lint") { 
    Invoke-Expression "docker-compose run --rm app sh -c 'flake8'"
}
elseif ($param1 -eq "django-admin") {
    Invoke-Expression "docker-compose run --rm app sh -c 'django-admin $param2'"
}
elseif ($param1 -eq "runserver") {
    Invoke-Expression "docker-compose up"
}
else {
    write-host "Invalid command"
}
