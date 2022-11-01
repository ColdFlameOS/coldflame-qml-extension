cmake_minimum_required(VERSION 3.16)

project(IgniteUI VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(QT_QML_OUTPUT_DIRECTORY  ${CMAKE_BINARY_DIR})

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_library(IgniteUI)
qt_add_qml_module(IgniteUI
    URI IgniteUI
    VERSION 1.0
    QML_FILES CFLabel.qml CFWindow.qml CFButton.qml CFComboBox.qml CFSlider.qml CFCheckBox.qml CFRadioButton.qml CFHyperLinkLabel.qml CFIconLabel.qml CFIconButton.qml CFRightClickMenu.qml CFSwitch.qml
    SOURCES igniteui.cpp igniteui.h
)

target_compile_definitions(IgniteUI
    PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(IgniteUI
    PRIVATE Qt6::Quick)

target_include_directories(IgniteUI PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Example Project
qt_add_executable(ExampleProject example/example.cpp)
qt_add_qml_module(ExampleProject
    URI ExampleProjectApp
    VERSION 1.0
    QML_FILES example/example.qml
)
target_link_libraries(ExampleProject PRIVATE Qt6::Quick IgniteUI)
target_compile_definitions(ExampleProject PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
