declare IsEven
fun {IsEven X} 
    if X==0 then 
        true 
    else 
        if X==0 then 
            false 
        else 
            {IsEven X-1} 
        end
    end 
end
