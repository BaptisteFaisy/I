#!/bin/bash


clang++ -Wall -Wextra -Werror -W -std=c++98 ASpell.cpp ATarget.cpp Dummy.cpp Fwoosh.cpp Warlock.cpp main.cpp -o start &&
clang++ -Wall -Wextra -Werror -W -std=c++98 ASpell1.cpp ATarget1.cpp Dummy1.cpp Fwoosh1.cpp Warlock1.cpp main1.cpp -o start1 &&
diff <(./start | tr -d ' \n') <(./start1 | tr -d ' \n') && echo "Les sorties sont identiques" || echo "Les sorties sont différentes"
rm -f start start1
