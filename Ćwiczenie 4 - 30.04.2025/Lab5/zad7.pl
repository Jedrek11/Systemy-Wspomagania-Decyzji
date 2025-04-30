silnia(0, 1).

silnia(N, Wynik) :-
    N > 0,                 
    N1 is N - 1,            
    silnia(N1, WynikN1),    
    Wynik is N * WynikN1.   


fibonacci(0, 0). % Zerowy wyraz ciagu to 0
fibonacci(1, 1). % Pierwszy wyraz ciagu to 1

fibonacci(N, Wynik) :-
    N > 1,                  
    N1 is N - 1,            
    N2 is N - 2,            
    fibonacci(N1, WynikN1), 
    fibonacci(N2, WynikN2), 
    Wynik is WynikN1 + WynikN2. 