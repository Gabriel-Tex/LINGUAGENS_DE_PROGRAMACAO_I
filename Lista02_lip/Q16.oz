local ConvolucaoIter Convolucao in
    % convolucao iterativa
    fun {ConvolucaoIter Xs Ys}
        % caso Xs seja vazio, retornar vazio
        case Xs
        of nil then nil
        % se Xs e Ys forem listas, então realizar a convolução
        [] X|Xr then
            case Ys of Y|Yr then
                % forma uma lista de tuplas X#Y com as posições de Xs e Ys correspondentes
                (X#Y)|{ConvolucaoIter Xr Yr}
            end
        end
    end
    /* inicialização da convolucao com o inverso de Ys para que os elementos de Xs 
    formem tuplas com os elementos de posições simétricas de Ys */
    fun {Convolucao Xs Ys}
        {ConvolucaoIter Xs {Reverse Ys}}
    end

    {Browse {Convolucao [1 3 5] [6 4 2]}}
end
