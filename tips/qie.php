<?php

/**
 * 打乱单词表，随机分配为10小份
 */
define('PATH', dirname(__FILE__));

$file_name = PATH . '/vim_tips_learnenglish.txt';
$fp = fopen($file_name, 'r');
while(!feof($fp)) {
    $buffer = fgets($fp, 4096);
    $k = mt_rand(0, 9);
    $res[$k][] = $buffer;
}
fclose($fp);
foreach ($res as $k => $v) {
    shuffle($v);
    $fileStr = implode("", $v);
    file_put_contents(PATH . "/vim_tips_learnenglish_$k.txt", $fileStr);
}
