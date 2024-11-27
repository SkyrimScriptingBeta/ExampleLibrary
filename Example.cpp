#include <iostream>

#include "ExampleLibrary.h"


int main() {
    auto value = get_example_library_value();
    std::cout << "Value: " << value << std::endl;
    return 0;
}