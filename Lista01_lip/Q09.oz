 
% kernel language:

local Sum1 in
    local X in
        Sum1 = proc {$ N ?I}
            local Z in
                local T in
                    Z = 0
                    T = N == Z
                    if T then 
                      I = Z 
                    else 
                        local J in
                            local M in
                                M = N-1
                                J = {Sum1 M}
                                I = N + J
                            end
                        end
                    end
                end
            end
        end
        X = 10
        {Browse {Sum1 X}}
    end
end


local Sum2 in
    local X in
        local Y in
            Sum2 = proc {$ N S ?R}
                local Z in
                    local T in
                        Z = 0
                        T = N == Z
                        if T then
                            R = S
                        else
                            local M in
                                local I in
                                    M = N-1
                                    I = N+S
                                    R = {Sum2 M I}
                                end
                            end
                        end
                    end
                end
            end
        X = 10
        Y = 0
        {Browse {Sum2 X Y}}
        end
    end
end
