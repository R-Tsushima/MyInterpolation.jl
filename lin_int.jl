function lin_int(grid,vals)
    function func(x)
        if x<grid[1]
            print("Error")
        elseif x>grid[n]
            print("Error")
        else index=searchsortedlast(grid,x)
            return (vals[index+1]-vals[index])/(grid[index+1]-grid[index])*(x-grid[index])+vals[index]
        end
    end
    return func
end
