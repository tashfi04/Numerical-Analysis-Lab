function retval = FalsePositionMethod (s, a, b)

    f = inline(s);
    
    fa = f(a);
    fb = f(b);
    
    if fa * fb > 0
        retval = 'The function has no real root in between the given limit';
        return;
    endif
    
    for i = 1 : 20
        x = (a * fb - b * fa) / (fb - fa);
        fx = f(x);
        
        retval(i,:) = [a, b, x, fx];
        
        if fx * f(a) < 0
            b = x;
        else
            a = x;
        endif
    endfor
        
endfunction
