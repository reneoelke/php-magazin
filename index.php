<?php

$logPathName = __DIR__ . '/log';
$logFileName = $logPathName . '/php-magazin.log';
$logFileContent = '';

is_dir($logPathName) || mkdir($logPathName);

file_put_contents($logFileName, time() . PHP_EOL, FILE_APPEND);
$logFileContent = file_get_contents($logFileName);

echo '<h1>Logfile (' . $logFileName . ')</h1>';
echo '<pre>' . $logFileContent . '</pre>';
