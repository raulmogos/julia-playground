
function rand_X_y()
    return rand([1,-1]) * rand(), rand([1,-1]) * rand()
end

function in_circle(x, y)
    return sqrt(x ^ 2 + y ^ 2) < 1
end


N = 100000
C = 0

for i = 1:N
    x, y = rand_X_y()
    if in_circle(x, y)
        global C += 1
    end
end

PI = (4 * C) / N

println(PI)