% ==================== Questão 9 ====================

% ITENS A) e B)

% ==============================================
declare
fun {NewStore}
   D={NewDictionary}
   C={NewCell 0}
   proc {Put K X}
      if {Not {Dictionary.member D K}} then
         C:=@C+1
      end
      D.K:=X
   end
   fun {Get K} D.K end
   fun {Size} @C end
in
   storeobject(put:Put get:Get size:Size)
end
proc {Put S K X} {S.put K X} end
fun {Get S K} {S.get K} end
fun {Size S} {S.size} end

%declare
%S={NewStore}
%{Put S 2 [22 33]}
%{Browse {Get S 2}}
%{Browse {Size S}}

% ==============================================

declare
fun {ShiftLeft L}
   case L of H|T then H|{ShiftLeft T}
   else [0] end
end

declare
fun {ShiftRight L} 0|L end

declare
fun {AddList L1 L2}
   case L1 of H1|T1 then
      case L2 of H2|T2 then
         H1+H2 | {AddList T1 T2}
      end
   else nil end
end

% ==============================================

declare S
S = {NewStore}
{Put S 1 [1]}   

declare
fun {FasterPascal N}
    if N =< {Size S} then {Get S N}               
    else Row L in
        L = {FasterPascal N-1}    
        Row = {AddList {ShiftLeft L} {ShiftRight L}}
        {Put S N Row}              
        Row
    end
end 

{Browse {FasterPascal 10}}   

% infelizmente não soube fazer os itens c) e d).