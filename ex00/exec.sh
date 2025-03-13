#!/bin/bash


clang++ -Wall -Wextra -Werror -W -std=c++98 exemple1.cpp exemple2.cpp -o start &&
clang++ -Wall -Wextra -Werror -W -std=c++98 test.cpp main.cpp -o start1 &&
diff <(./start | tr -d ' \n') <(./start1 | tr -d ' \n') && echo "Les sorties sont identiques" || echo "Les sorties sont différentes"
rm -f start start1
