<?php

namespace App\Classes;

class Utils
{
    public static function contohGetDate()
    {
        //set timezone
        //https://www.w3schools.com/php/func_date_default_timezone_set.asp
        //https://www.php.net/manual/en/timezones.php
        date_default_timezone_set("Asia/Jakarta");

        //create date from timezone
        //https://www.w3schools.com/php/func_date_date_create.asp
        $date = date_create("Asia/Jakarta"); //

        //format date
        //https://www.w3schools.com/php/func_date_date_format.asp
        echo date_format($date, "Y/m/d h:i:s"); //2022/05/30 11:30:45
        echo "<br><br>";

        // Print the array from getdate()
        //https://www.w3schools.com/php/func_date_getdate.asp
        print_r(getdate());
        //Array ( [seconds] => 45 [minutes] => 30 [hours] => 23 [mday] => 30 [wday] => 1 [mon] => 5 [year] => 2022 [yday] => 149 [weekday] => Monday [month] => May [0] => 1653928245 )
        echo "<br><br>";
        // Return date/time info of a timestamp; then format the output
        $mydate = getdate("1653927822");
        echo "$mydate[weekday], $mydate[month] $mydate[mday], $mydate[year] : $mydate[hours]:$mydate[minutes]:$mydate[seconds] = $mydate[0]";
        //Monday, May 30, 2022 : 23:23:42 = 1653927822
    }

    public static function getDate($type, $timestamps = null)
    {
        date_default_timezone_set("Asia/Jakarta");
        $date = date_create("Asia/Jakarta"); //

        //parse from timestamps
        if ($timestamps) {
            # code...
            date_timestamp_set($date, $timestamps);
        }

        if ($type == 'datetime-') {
            # code...
            return date_format($date, "Y-m-d h:i:s");
        } else if ($type == 'datetime/') {
            # code...
            return date_format($date, "Y/m/d h:i:s");
        } else if ($type == 'date-') {
            # code...
            return date_format($date, "Y-m-d");
        } else if ($type == 'date') {
            # code...
            return date_format($date, "Ymd");
        } else if ($type == 'date/') {
            # code...
            return date_format($date, "Y/m/d");
        } else if ($type == 'time') {
            # code...
            return date_format($date, "h:i:s");
        } else if ($type == 'timestamp') {
            # code...
            return date_timestamp_get($date);
        } else if ($type == 'custom') {
            # code...
            return $date;
        } else if ($type == 'lastweek') {
            # code...
            return date('Y-m-d', strtotime('-7 days'));
        } else {
            return date_format($date, $type);
        }
    }

    public static function generateKey($inputString)
    {
        // $inputString = "register|tenant A|20220912";

        // Calculate SHA-1 hash
        $sha1Hash = sha1($inputString);

        // Encode the SHA-1 hash in base64
        $base64Encoded = base64_encode($sha1Hash);

        return $base64Encoded;
    }

    public static function dekripsi($encryptedBase64Key, $text)
    {
        // Decode the base64 key
        $parsedBase64Key = base64_decode($encryptedBase64Key);

        // Decode the base64-encoded text
        $decodedText = base64_decode($text);

        // Decrypt the data
        $decryptedData = openssl_decrypt($decodedText, 'aes-128-ecb', $parsedBase64Key, OPENSSL_RAW_DATA);

        // echo "Plain text: " . $decryptedData;
        return $decryptedData;
    }

    public static function enkripsi($encryptedBase64Key, $text)
    {
        // Decode the base64 key
        $parsedBase64Key = base64_decode($encryptedBase64Key);

        // Encrypt the data
        $cipherText = openssl_encrypt($text, 'aes-128-ecb', $parsedBase64Key, OPENSSL_RAW_DATA);

        // Encode the encrypted data to base64
        $cipherTextBase64 = base64_encode($cipherText);

        // echo "Cipher text: " . $cipherTextBase64;
        return $cipherTextBase64;
    }
}
