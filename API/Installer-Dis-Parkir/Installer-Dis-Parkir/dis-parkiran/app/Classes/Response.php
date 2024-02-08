<?php

namespace App\Classes;

class Response
{
    public static function set($message = 'OK', $data = [], $success = true, $error = '')
    {
        $return['data'] = $data;
        $return['total'] = count($data);
        $return['success'] = $success;
        $return['message'] = $message;
        $return['error'] = $error;

        return $return;
    }

    public static function setWarning($message)
    {
        $return['data'] = [];
        $return['total'] = 0;
        $return['success'] = false;
        $return['message'] = $message;

        return $return;
    }

    public static function setError($error)
    {
        $return['data'] = [];
        $return['total'] = 0;
        $return['success'] = false;
        $return['message'] = $error->getMessage();
        if (isset($error->errorInfo[2])) {
            # code...
            $return['message'] = $error->errorInfo[2];
        }
        $return['error'] = $error->getMessage();

        return $return;
    }
}
