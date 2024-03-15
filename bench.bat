@echo off
echo Very cool language benchmark script
echo ---
echo Node.js
node perf.js
echo ---
echo Lua (LuaJIT)
luajit perf.lua
echo ---
echo Rust
rustc perf.rs -C opt-level=3 -C codegen-units=1 -C lto=true -C target-cpu=native -o perfrs.exe
perfrs.exe
echo ---
echo Go
go run perf.go
echo ---
echo Python (PyPy3)
pypy3 perf.py
echo ---
echo C (GCC)
gcc perf.c -march=native -mtune=native -Ofast -o perfc.exe
perfc.exe
echo ---
echo C++ (G++)
g++ perf.cpp -std=c++11 -march=native -mtune=native -Ofast -o perfcpp.exe
perfcpp.exe
echo ---
echo C#
cd perfcsharpsrc
dotnet run --configuration Release --verbosity quiet
cd ..
echo ---
echo Java
javac perf.java
java perf
echo ---
