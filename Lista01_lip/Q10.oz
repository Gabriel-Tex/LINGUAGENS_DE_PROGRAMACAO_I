declare SMerge
SMerge = proc {$ Xs Ys ?S}
    case Xs of nil then S = Ys
    else
        case Ys of nil then S = Xs
        else
            case Xs of X|Xr then
                case Ys of Y|Yr then
                    local T in
                        local J in
                            T = X=<Y
                            if T then
                                S = X|J
                                {SMerge Xr Ys J}
                            else 
                                S = Y|J
                                {SMerge Xs Yr J} 
                
                            end
                        end
                    end
                end
            end
        end
    end
end
