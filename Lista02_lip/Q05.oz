local SumIter SumList in
    % abstração do SumList iterativo com acumulador A
    fun {SumIter A Xs}
        case Xs 
        of nil then A
% soma X correspondente à cabeça e chama recursivamente a função para a cauda da lista
        [] X|Xr then {SumIter A+X Xr} 
        end
    end
    % inicializador de SumList 
    fun {SumList Xs}
        {SumIter 0 Xs} 
    end
    % chamada
    {Browse {SumList [1 2 3 4 5]}}
    
end