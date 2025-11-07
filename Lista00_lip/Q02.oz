% ==================== Questão 2 ====================

% ITEM A)
declare 
local Num Den Comb in   
    fun {Num A B}
        if A == B then B
        else A * {Num A-1 B} end
    end

    fun {Den B}
        if B == 0 then 1 
        else B * {Den B-1} end
    end

    fun {Comb N K}
        {Num N N-K+1} div {Den K}
    end

    {Browse {Comb 10 3}}
end

% ITEM B)
declare 
local Num Den Comb in 
      
    fun {Num A B}
        if A == B then B
        else A * {Num A-1 B} end
    end

    fun {Den B}
        if B == 0 then 1 
        else B * {Den B-1} end
    end

    fun {Comb N K}
        local C in
            if K > N div 2 then C = N-K
            else C = K end
            {Num N N-C+1} div {Den C}
        end
    end

    {Browse {Comb 10 3}}
end