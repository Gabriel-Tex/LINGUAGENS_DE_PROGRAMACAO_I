local FactIter Fact in
    % abstração do fatorial iterativo com acumulador
    fun {FactIter I N A}
        local J in
            J = I+1
            if I < N then {FactIter J N A*J}
            else A end
        end
    end

    % inicialização do fatorial com contador e acumulador iguais a 1
    fun {Fact N}
        {FactIter 1 N 1}
    end

    % chamada
    {Browse {Fact 5}}

end

