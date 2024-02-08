<?php

namespace App\Http\Middleware;

use Closure;
use Firebase\JWT\JWT;
use Firebase\JWT\ExpiredException;
use Firebase\JWT\Key;
use Illuminate\Http\Request;

class AuthCustom
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        $token = $request->bearerToken();
        if ($token == NULL) {
            # code...
            $data = [
                'code' => 403,
                'error' => 'Unauthorized.',
                'success' => false,
            ];

            abort(response()->json('Unauthorized', 403));
        }

        if (!$token) {
            // Unauthorized response if token not there
            $data = [
                'code' => 401,
                'error' => 'Token not provided.',
                'success' => false,
            ];

            abort(response()->json($data, 401));
        }

        try {
            $credentials = JWT::decode($token, new Key(env('JWT_SECRET_KEY'), 'HS256'));
            // var_dump($credentials);
        } catch (ExpiredException $e) {
            $data = [
                'code' => 400,
                'error' => 'Provided token is expired.',
                'success' => false,
            ];
            abort(response()->json($data, 400));
        } catch (\Exception $e) {
            $data = [
                'code' => 400,
                'error' => 'An error while decoding token.',
                'success' => false,
            ];
            abort(response()->json($data, 400));
        }
        // var_dump($credentials);
        $request->request->add(['auth' => $credentials->data]);
        $request->request->add(['user_id_log' => $credentials->data->user_id]);
        $request->request->add(['fullname_log' => $credentials->data->name]);
        $request->request->add(['username_log' => $credentials->data->username]);

        return $next($request);
    }
}
