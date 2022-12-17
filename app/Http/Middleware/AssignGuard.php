<?php

namespace App\Http\Middleware;

use App\Traits\GeneralTrait;
use Closure;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;
use Tymon\JWTAuth\Http\Middleware\BaseMiddleware;
use JWTAuth;
class AssignGuard extends BaseMiddleware
{ 
    use GeneralTrait;
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        if($guard != null){
            auth()->shouldUse($guard); //shoud you user guard / table
            $token = $request->header('auth-token');
            $request->headers->set('auth-token', (string) $token, true);
            $request->headers->set('Authorization', 'Bearer '.$token, true);
            try {

                JWTAuth::parseToken()->authenticate();
                //اذا لم يتم الموافقة علي عملية التسجبل من الادمن
                if(auth()->user()->status != 'active')
                {
                    return  $this -> returnSuccess('200', __('Your registration application has not been reviewed'));
                }
            } catch (TokenExpiredException $e) {
                return  $this -> returnError('401','Unauthenticated user');
            } catch (JWTException $e) {

                return  $this -> returnError('401', 'Unauthorized');
            }

        }
         return $next($request);
    }
}
