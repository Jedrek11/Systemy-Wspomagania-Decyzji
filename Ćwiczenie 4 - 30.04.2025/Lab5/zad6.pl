kwadrat(A, B, C, Roots) :-
    delta(A, B, C, Delta),       
    (   Delta < 0                
    ->  Roots = []               
    ;   Delta =:= 0              
    ->  X0 is -B / (2*A),       
        Roots = [X0]             
    ;   % Delta > 0              
        SqrtDelta is sqrt(Delta),
        X1 is (-B - SqrtDelta) / 
        X2 is (-B + SqrtDelta) / 
        Roots = [X1, X2]         
    ).

delta(A, B, C, Delta) :-
    Delta is B*B - 4*A*C.