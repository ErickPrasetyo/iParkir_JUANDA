<?php

namespace App\Http\Controllers;

class RouterController extends Controller
{
    public $session;

    public $response;

    public function __construct()
    {
        date_default_timezone_set("Asia/Jakarta");

        $this->middleware(function ($request, $next) {
            // var_dump($request->auth);
            return $next($request);
        });
    }
}
