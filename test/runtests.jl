using AbstractFields
using Base.Test

@_abstract atest0 begin
  x::Int64
end

@_type test0 atest0 begin
  y::Int64
end

t0 = test0(1, 2)
@test t0.x == 1
@test t0.y == 2

# @_immutable itest0 atest0 begin
#   y::Int64
# end

# it0 = itest0(1, 2)
#@test it0.x == 1
#@test it0.y == 2
