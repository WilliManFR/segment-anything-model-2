cmake_minimum_required(VERSION 3.5)

project(sam2 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTORCC ON)

find_package(Qt6 COMPONENTS Core Gui Qml Quick REQUIRED)

qt_add_resources(RESOURCES resources.qrc)

add_executable(sam2 main.cpp main.qml ${RESOURCES})

target_link_libraries(sam2 Qt6::Core Qt6::Gui Qt6::Qml Qt6::Quick)
