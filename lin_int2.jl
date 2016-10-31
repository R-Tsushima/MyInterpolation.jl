function lin_inter(grid,vals)
    function func(x::Real)
        if x < grid[1]
            print("Error")
        elseif x > grid[end]
            print("Error")
        elseif x == grid[1]
            return vals[1]
        elseif x == grid[end]
            return vals[end]
        else
            index = searchsortedlast(grid,x)
            return (vals[index+1] - vals[index])/(grid[index+1] - grid[index])*(x - grid[index]) + vals[index]
        end
    end

    function func{T<:Real}(x::AbstractVector{T})
        m = length(x)
        out = Array(Any,m)
        for i in 1:m
            out[i] = func(x[i])
        end
        return out
    end
    return func

end
