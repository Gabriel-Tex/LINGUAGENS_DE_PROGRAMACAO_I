local AppendIter Append in
   % função append iterativa  
   fun {AppendIter Xs Ys}
      case Xs
      of nil then Ys
      [] X|Xr then {AppendIter Xr X|Ys}
      /*  diferentemente do append tradicional, cuja chamada recursiva se dá
por X|{AppendIter Xr Ys} e não possui a otimização da chamada pela cauda, no append
iterativo utilizamos {AppendIter Xr X|Ys}, que concatena a lista Xs inversa 
à lista Ys. Para consertar, basta trabalhar com {Reverse Xs} no lugar de Xs.
      */
      end
   end
   % inicialização do Append com o inverso de Xs para concatenar a lista Xs corretamente
   fun {Append Xs Ys}
      {AppendIter {Reverse Xs} Ys}
   end

   % chamada
   {Browse {Append [a b c] [d e]}}

end