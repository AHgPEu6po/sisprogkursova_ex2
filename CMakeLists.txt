cmake_minimum_required(VERSION 3.10)
project(Calculator)

# Створюємо бібліотеку
add_library(calc STATIC calc.cpp)

# Створюємо виконуваний файл і зв'язуємо його з бібліотекою
add_executable(main main.cpp)
target_link_libraries(main calc)
