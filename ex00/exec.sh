#!/bin/bash

compare_files() {
    file1="$1"
    file2="$2"

    cmp -s <(tr -d ' \n' < "$file1") <(tr -d ' \n' < "$file2")

    if [ $? -eq 0 ]; then
        echo "1 ($file1 et $file2 sont identiques sans espaces ni retours à la ligne)"
    else
        echo "0 ($file1 et $file2 sont différents)"
    fi
}

compare_files "main.cpp" "exemple1.cpp"
compare_files "test.cpp" "exemple2.cpp"
compare_files "test.hpp" "exemple3.hpp"
