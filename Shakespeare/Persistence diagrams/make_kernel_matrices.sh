#!/usr/bin/env zsh

#~/Projects/Aleph/build/tools/topological-kernels -p 1 Normal/*.txt   > K_indicator_function_1.txt
#~/Projects/Aleph/build/tools/topological-kernels -p 1 Inverted/*.txt > K_indicator_function_1_inverted.txt
#
#~/Projects/Aleph/build/tools/topological-kernels -p 2 Normal/*.txt   > K_indicator_function_2.txt
#~/Projects/Aleph/build/tools/topological-kernels -p 2 Inverted/*.txt > K_indicator_function_2_inverted.txt
#
#~/Projects/Aleph/build/tools/topological-kernels -p 3 Normal/*.txt   > K_indicator_function_3.txt
#~/Projects/Aleph/build/tools/topological-kernels -p 3 Inverted/*.txt > K_indicator_function_3_inverted.txt

#~/Projects/Aleph/build/tools/topological-kernels --wasserstein -p 1 Normal/*.txt   > K_Wasserstein_1.txt
#~/Projects/Aleph/build/tools/topological-kernels --wasserstein -p 1 Inverted/*.txt > K_Wasserstein_1_inverted.txt
#
#~/Projects/Aleph/build/tools/topological-kernels --wasserstein -p 2 Normal/*.txt   > K_Wasserstein_2.txt
#~/Projects/Aleph/build/tools/topological-kernels --wasserstein -p 2 Inverted/*.txt > K_Wasserstein_2_inverted.txt

~/Projects/Aleph/build/tools/topological-kernels --wasserstein -p 3 Normal/*.txt   > K_Wasserstein_3.txt
~/Projects/Aleph/build/tools/topological-kernels --wasserstein -p 3 Inverted/*.txt > K_Wasserstein_3_inverted.txt
