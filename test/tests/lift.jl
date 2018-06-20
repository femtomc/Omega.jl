using Mu
using Base.Test

struct MyType
  x
end

Omega.lift(:MyType; n=1, mod=Main)
x = MyType(uniform(0.0, 1.0))
@test x isa Omega.RandVar

struct YourType{T}
  x::T
end

Omega.lift(:YourType, n=1, mod=Main)

x = YourType(uniform(0.0, 1.0))
rand(x)
