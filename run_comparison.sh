#!/usr/bin/env zsh

echo "Persistence indicator functions, p = 1"
./test_supervised_algorithms.py Shakespeare/Persistence\ diagrams/K_indicator_function_1_inverted.txt Shakespeare/Categories.txt

echo "Persistence indicator functions, p = 2"
./test_supervised_algorithms.py Shakespeare/Persistence\ diagrams/K_indicator_function_2_inverted.txt Shakespeare/Categories.txt

echo "Persistence indicator functions, p = 3"
./test_supervised_algorithms.py Shakespeare/Persistence\ diagrams/K_indicator_function_3_inverted.txt Shakespeare/Categories.txt

echo "Wasserstein distance, p = 1"
./test_supervised_algorithms.py Shakespeare/Persistence\ diagrams/K_Wasserstein_1_inverted.txt Shakespeare/Categories.txt

echo "Wasserstein distance, p = 2"
./test_supervised_algorithms.py Shakespeare/Persistence\ diagrams/K_Wasserstein_2_inverted.txt Shakespeare/Categories.txt

echo "Wasserstein distance, p = 3"
./test_supervised_algorithms.py Shakespeare/Persistence\ diagrams/K_Wasserstein_3_inverted.txt Shakespeare/Categories.txt
