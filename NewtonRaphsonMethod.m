function retval = NewtonRaphsonMethod (s, a, b)
pkg load symbolic

    f = inline(s);
    syms x;
    dif = diff(f);
    d = function_handle(dif);
    arr(1) =  (a+b)/2;
    f = function_handle(f);

    for i = 2:20
        arr(i) =  (arr(i-1) - (f(arr(i-1))/d(arr(i-1))));
    endfor
    retval = [arr'];
endfunction
