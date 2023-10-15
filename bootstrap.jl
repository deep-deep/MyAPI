(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using MyAPI
const UserApp = MyAPI
MyAPI.main()
