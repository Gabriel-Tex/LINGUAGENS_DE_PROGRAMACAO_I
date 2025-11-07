local Test in
    proc {Test X}
        case X
        of a|Z then {Browse 1}
        [] f(a) then {Browse 2}
        [] Y|Z andthen Y==Z then {Browse 3}
        [] Y|Z then {Browse 4}
        [] f(Y) then {Browse 5}
        else {Browse 6} end
    end
    
    {Test [b c a]} 
    {Test f(b(3))} 
    {Test f(a)}
    {Test f(a(3))}
    {Test f(d)}
    {Test [a b c]}
    {Test [c a b]}
    {Test a|a}
    % {Test ´|´(a b c)} está dando erro


end