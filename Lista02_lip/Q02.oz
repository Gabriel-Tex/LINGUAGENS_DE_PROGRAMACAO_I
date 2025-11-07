% usando CbrtIter, Improve e GoodEnough

local Cbrt in 
    fun {Cbrt X}
        fun {CbrtIter Guess}
            fun {Improve}
                (X / (Guess*Guess) + 2.0 * Guess) / 3.0
            end
            fun {GoodEnough}
                {Abs X-Guess*Guess*Guess}/X < 0.00001
            end
        in
            if {GoodEnough} then Guess
            else
                {CbrtIter {Improve}}
            end
        end
        Guess=1.0
    in
        {CbrtIter Guess}
    end

    {Browse {Cbrt 27.0}}

end

% usando a abstração iterate

local Iterate Cbrt in
    fun {Iterate S IsDone Transform}
        if {IsDone S} then S
        else S1 in
            S1={Transform S}
            {Iterate S1 IsDone Transform}
        end
    end

    fun {Cbrt X}
        {Iterate
            1.0
            fun {$ G} {Abs X - G*G*G} < 0.00001 end
            fun {$ G} (X / (G*G) + 2.0 * G) / 3.0 end}
    end

    {Browse {Cbrt 27.0}}

end