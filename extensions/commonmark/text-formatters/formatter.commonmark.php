<?php

use League\CommonMark\CommonMarkConverter;
include('extensions/commonmark/vendor/autoload.php');

class FormatterCommonMark extends TextFormatter
{
    private $converter;

    public function __construct()
    {
        $this->converter = new CommonMarkConverter();
    }

    public function about()
    {
        return [ 'name' => 'CommonMark' ];
    }

    public function run($string)
    {
        $string = trim($this->converter->convertToHtml($string));
        return $string;
    }
}
