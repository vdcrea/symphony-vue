<?php

use League\CommonMark\CommonMarkConverter;
include('extensions/commonmark/vendor/autoload.php');

class FormatterCommonMarkJson extends TextFormatter
{
    private $converter;

    public function __construct()
    {
        $this->converter = new CommonMarkConverter();
    }

    public function about()
    {
        return [ 'name' => 'CommonMark Json' ];
    }

    public function run($string)
    {
        $string = trim($this->converter->convertToHtml($string));
        $string = str_replace('&quot;', '"', $string);
        $string = json_encode($string, JSON_HEX_QUOT | JSON_HEX_TAG);
        return $string;
    }
}
