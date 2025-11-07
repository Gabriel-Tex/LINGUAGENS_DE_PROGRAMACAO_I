% ==================== Questão 1 ====================

% ITEM A)
   
    % utilizando laço de repetição e estado explícito
declare
local C in

    C = {NewCell 1}
    for I in 1..100 do
        C := @C * 2
    end
    {Browse @C}
end

% ITEM B)

declare
local C in

    C = {NewCell 1}
    for I in 1..100 do
        C := @C * I 
    end
    {Browse @C}
end