<?php

namespace App\Classes;

class SendData
{
    public static function generateKey($inputString)
    {
        // $inputString = "register|tenant A|20220912";

        // Calculate the SHA-1 hash
        $sha1Hash = hash('sha1', $inputString);

        // Encode the SHA-1 hash in Base64
        // $base64Encoded = base64_encode(hex2bin($sha1Hash));
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

    public static function dekripsiLara($encryptedBase64Key, $text)
    {
        // $text = "w9ywXAgt+L1Zs1zWYDRt4PxYCJw1Ki5cYcNYTMn6ZCdGU5Z2YXGE5lr8MjHra6qHkVOwe4XHJSujzjZ77Pqp4iKtL7wBPMw5esJkxP0aellWLUQCfvr8+kNDM3rN0OVORhxzz2nMkxpsDHDpgEvifHE861LVlZItL8NwXS5H4W0=";
        // $encryptedBase64Key = 'MmQxNTZmOTQ0MGRhODI3ZDRkOWY0OTI5Yzc4NWMzNWZhY2VmNzc5MA==';

        // Decode the Base64 key
        $decodedKey = base64_decode($encryptedBase64Key);

        $iv = ''; // Initialization Vector (for ECB mode, it can be an empty string)
        $method = 'AES-128-ECB'; // AES encryption with ECB mode
        $options = OPENSSL_RAW_DATA | OPENSSL_ZERO_PADDING;

        $decryptedData = openssl_decrypt(base64_decode($text), $method, $decodedKey, $options, $iv);

        if ($decryptedData === false) {
            die('Error during decryption');
        }

        $decryptedText = rtrim($decryptedData, "\0"); // Remove null padding

        return $decryptedText;
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

    public static function enkripsiLara($base64Key, $text)
    {
        // $text = 'Hello, this is a secret message.';
        // $base64Key = 'YourBase64KeyHere';

        // Decode the Base64 key
        $decodedKey = base64_decode($base64Key);

        $iv = ''; // Initialization Vector (for ECB mode, it can be an empty string)
        $method = 'aes-128-ecb'; // AES encryption with ECB mode
        $options = OPENSSL_RAW_DATA;

        $encryptedData = openssl_encrypt($text, $method, $decodedKey, $options, $iv);
        // $encryptedData = openssl_encrypt($text, 'aes-128-ecb', $decodedKey, OPENSSL_RAW_DATA | OPENSSL_ZERO_PADDING);

        if ($encryptedData === false) {
            die('Error during encryption');
        }

        // Convert the binary data to Base64
        $encryptedBase64 = base64_encode($encryptedData);

        return $encryptedBase64;
        // echo "Cipher text: " . $encryptedBase64;
    }

    public static function sendingData($method, $ReqData)
    {
        $ReqHeader = [
            'Content-Type: application/json',
        ];

        // $endPointRegister = "https://ap1.yindjin.tech:16807/register/";
        // $endPointRecord = "https://ap1.yindjin.tech:16807/trxrecord/";

        $endPointRecord = URL_RECORD;
        $endPointRegister = URL_REGISTER;

        $endpointdev = "";
        switch ($method) {
            case 'register':
                # code...
                $endpointdev = $endPointRegister;
                break;
            case 'record':
                # code...
                $endpointdev = $endPointRecord;
                break;
            default:
                # code...
                break;
        }

        $ch = curl_init();
        // curl_setopt($ch, CURLOPT_URL, SendData::$endpointdev);
        curl_setopt($ch, CURLOPT_URL, $endpointdev);
        curl_setopt($ch, CURLOPT_TIMEOUT, 30); //timeout after 30 seconds
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $ReqData);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $ReqHeader);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $result_curl = curl_exec($ch);
        $status_curl = curl_getinfo($ch, CURLINFO_HTTP_CODE);   //get status code
        if ($status_curl !== 200) {
            // wh_log("Error: call to URL $URL_SUBMIT failed with status $status_curl, response $result_curl, curl_error " . curl_error($ch) . ", curl_errno " . curl_errno($ch));
            // exit;
        }
        // echo $result_curl;
        return $result_curl;
    }

    public static function sendingAPI($url, $method, $ReqData)
    {
        $ReqHeader = [
            'Content-Type: application/json',
        ];

        $ch = curl_init();
        // curl_setopt($ch, CURLOPT_URL, SendData::$endpointdev);
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_TIMEOUT, 30); //timeout after 30 seconds
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, $method);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $ReqData);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $ReqHeader);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $result_curl = curl_exec($ch);
        $status_curl = curl_getinfo($ch, CURLINFO_HTTP_CODE);   //get status code
        if ($status_curl !== 200) {
            // wh_log("Error: call to URL $URL_SUBMIT failed with status $status_curl, response $result_curl, curl_error " . curl_error($ch) . ", curl_errno " . curl_errno($ch));
            // exit;
        }
        // echo $result_curl;
        return $result_curl;
    }
}
