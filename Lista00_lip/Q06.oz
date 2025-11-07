% ==================== Questão 6 (complemento no PDF) ====================

% ITEM A)
    % função GenericPascal e auxiliares

declare
local ShiftLeft ShiftRight OpList GenericPascal Add Mult Mul1 Sub in
    fun {ShiftLeft L}
        case L of H|T then
            H|{ShiftLeft T}
        else [0] end
        end

    fun {ShiftRight L} 0|L end

    fun {OpList Op L1 L2}
        case L1 of H1|T1 then
            case L2 of H2|T2 then
                {Op H1 H2}|{OpList Op T1 T2}
            end
        else nil end
    end

    fun {GenericPascal Op N}
        if N==1 then [1]
        else L in
            L={GenericPascal Op N-1}
                {OpList Op {ShiftLeft L} {ShiftRight L}}
        end
    end

        % operações

    fun {Add X Y} X+Y end

    fun {Mult X Y} X*Y end

    fun {Sub X Y} X-Y end

    fun {Mul1 X Y} (X+1)*(Y+1) end

% ITEM B)
        % o laço de repetição abaixo permite que visualizemos as 10 primeiras linhas do triângulo de uma só vez
    for I in 1..10 do {Browse {GenericPascal Add I}}
    end
end