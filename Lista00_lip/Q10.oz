% ==================== Questão 10 (complemento no PDF) ====================

% ITEM A) NO PDF

% ITEM B)
declare
local C in
C={NewCell 0}
thread I in
    I=@C
    {Delay 1000}
    C:=I+1
end
thread J in
    J=@C
    {Delay 1000}
    C:=J+1
end

{Delay 2000} % delay para garantir que, ao dar feed file, o programa resultará em 1, visto que isso possibilita que o browse execute depois das threads
{Browse @C}
end

% ITEM C) NO PDF