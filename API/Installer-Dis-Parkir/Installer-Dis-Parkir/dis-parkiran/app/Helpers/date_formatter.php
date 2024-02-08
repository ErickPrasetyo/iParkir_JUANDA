<?php

function getFormattedDate($date = DATE_NOW, $format = DATE_FORMAT_YMDHIS)
{
    return date($format, strtotime($date));
}

function getDayID($date = DATE_NOW)
{
    return HARI[getFormattedDate($date, DATE_FORMAT_DAY_WEEK)];
}

function getMonthID($date = DATE_NOW)
{
    return BULAN[getFormattedDate($date, DATE_FORMAT_MONTH)];
}

function getDateID($date = DATE_NOW)
{
    return getFormattedDate($date, DATE_FORMAT_DAY) . ' ' . getMonthID($date) . ' ' . getFormattedDate($date, DATE_FORMAT_YEAR);
}

function getDatetimeID($date = DATE_NOW, $region = NULL)
{
    return getDateID($date) . ' ' . getFormattedDate($date, DATE_FORMAT_HIS) . ($region ? ' ' . $region : '');
}