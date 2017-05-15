module MyInterpolations
export my_lin_interp
function my_lin_interp.(grid,vals)
    function func(x::Real)
        if x <= grid[1]
            return (vals[2] - vals[1])/(grid[2] - grid[1])*(x - grid[1]) + vals[1]
        elseif x >= grid[end]
            return (vals[end] - vals[end-1])/(grid[end] - grid[end-1])*(x - grid[end]) + vals[end]
        else
            index = searchsortedlast(grid,x)
            return (vals[index+1] - vals[index])/(grid[index+1] - grid[index])*(x - grid[index]) + vals[index]
        end
    end
end
end
