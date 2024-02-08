<?php

function isEmailValid($email = NULL)
{
    return $email ? filter_var($email, FILTER_VALIDATE_EMAIL) : false;
}

function getRandomPIN()
{
    return random_int(10000000, 99999999);
}

function getRandomCode($panjang = 6)
{
    $characters = '23456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghjkmnpqrstuvwxyz';
    $randomString = '';

    for ($i = 0; $i < $panjang; $i++)
    {
        $index = rand(0, strlen($characters) - 1);
        $randomString .= $characters[$index];
    }

    return $randomString;
}

function getDecodedJWT($jwt_token)
{
    $sub_token = explode(".", $jwt_token);  
    
    $header = json_decode(base64_decode($sub_token[0]));
    $body = json_decode(base64_decode($sub_token[1]));
    
    // dd($jwt_token, $header, $body);
    // return [$jwt_token, $header, $body];
    return $body;
}

function convertToArrayOfObject($items)
{
    return $items->map(function ($item) { return (object) $item; });
}