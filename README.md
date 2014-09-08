# AbstractFields

AbstractFields provides macros for emulating Abstract types with fields. To do so, it maintains a global direction of abstract types and the fields associated with them. When a type or immutable is created that inherits from that abstract type. those fields are copied in.

Example code:
```
@_abstract Agent begin
  x::Float64
  y::Float64
end

@_type UserControlledAgent Agent begin
  dx::Float64
  dy::Float64
end

@_immutable Other Agent begin
  name::String
end

user = UserControlledAgent(0.0, 0.0, 2.0, 2.0)
other = Other(0.0, 0.0, "test")
```

[![Build Status](https://travis-ci.org/abeschneider/AbstractFields.jl.svg?branch=master)](https://travis-ci.org/abeschneider/AbstractFields.jl)
