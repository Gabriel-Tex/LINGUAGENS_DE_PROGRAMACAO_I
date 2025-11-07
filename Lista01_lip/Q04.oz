% item A)
/* 
if <C> then <s1> else <s2> end
            ≡
declare C 
case C of true then <s1> 
    [] false then <s2> end

% Item B)
if {Arity X} == {Arity <pattern>} andthen {Label X} == {Label <pattern>} then 
    <s1>  
else 
    <s2> 
end
*/

% Por exemplo, considere o seguinte programa: 
local L in 
    L=[5 6 7 8] 
    case L of H|T then 
        {Browse H} {Browse T} 
    end 
end 
% Escrevamos ele em termos do statement if:
local Pattern L H T in 
    Pattern = H|T 
    L = [5 6 7 8]
    if {Arity L} == {Arity Pattern} andthen {Label L} == {Label Pattern} then 
        H = L.1
        T = L.2 
        {Browse H} {Browse T}
    end 
end
