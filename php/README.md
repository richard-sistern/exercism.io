#Environment Setup

## Install PHP
choco find php
choco install php
php -i

## Install Composer
https://getcomposer.org/Composer-Setup.exe
composer -V

## Install PHPUnit
composer global require phpunit/phpunit

## Running the tests
phpunit file_to_test.php
