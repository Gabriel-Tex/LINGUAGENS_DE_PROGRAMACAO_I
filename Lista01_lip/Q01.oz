% full language:
local P in
    proc {P X} if X>0 then {P X-1} end end
end

local P in
    P = proc{$ X}
        local T in
            local Y in
                Y = 0
                T = X>Y
                if T then 
                    local J in
                        J = X-1
                        {P J}
                    end
                end
            end
        end
    end
end