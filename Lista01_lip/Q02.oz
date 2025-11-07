
declare MulByN N in 
N=3 
proc {MulByN X ?Y} 
    Y=N*X 
end

% Exemplo 1:
local A B in
	A = 10
	{MulByN A B}
end

% Exemplo 2:
local A B N in
	A = 10
	N = 5
	{MulByN A B}
end
