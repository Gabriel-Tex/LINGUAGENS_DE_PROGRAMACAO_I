local F Iterate Improve GoodEnough Bissecao in
    % benchmark
    fun {F X}
        X*X*X - 9.0*X + 3.0
    end

    % abstração iterate
    fun {Iterate S IsDone Transform}
        if {IsDone S} then S
        else S1 in
            S1 = {Transform S}
            {Iterate S1 IsDone Transform}
        end
    end
    % refinamento
    fun {Improve S}
        case S of A#B then
            local X in
                X = (A+B)/2.0
                if {F X} > 0.0 then A#X else X#B end
            end
        end
    end
    % teste de erro (verifica o erro absoluto em relação ao intervalo AB)
    fun {GoodEnough S}
        case S of A#B then
            {Abs A-B} < 0.00001
        end
    end
    % método da bisseção utilizando abstração iterate
    fun {Bissecao A B}
        local S in
            S = {Iterate A#B GoodEnough Improve}
            % escolhe a extremidade do intervalo cujo valor de F correspondente seja mais próximo de 0
            case S of X#Y then
                if {Abs {F X}} < {Abs {F Y}} then X
                else Y end
            end
        end
    end

    % lembrando que F(A) < 0 < F(B)
    {Browse {Bissecao 1.0 0.0}}

end