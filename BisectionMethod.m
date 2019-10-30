function retval = BisectionMethod (s, a, b)

  f = inline(s);

  fa = f(a);
  fb = f(b);
  
  if fa * fb >= 0
    retval = 'The function has no real root in between the given limit';
    return;
  end
  
  retval(1,:) = [a, b ,0, 0];
  
  for i = 2: 20
    x = (a + b) / 2;
    fx = f(x);
    
    retval(i,:) = [a, b, x, fx];
    
    if f(b) * fx < 0
      a = x;
    else
      b = x;
    endif

   endfor
      
endfunction
