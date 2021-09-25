#!/usr/bin/env zsh

#~/Projects/Aleph/build/tools/persistence-indicator-function-distance -p 1 Normal/*.txt   > D_indicator_function_1.txt
#~/Projects/Aleph/build/tools/persistence-indicator-function-distance -p 1 Inverted/*.txt > D_indicator_function_1_inverted.txt
#
#~/Projects/Aleph/build/tools/persistence-indicator-function-distance -p 2 Normal/*.txt   > D_indicator_function_2.txt
#~/Projects/Aleph/build/tools/persistence-indicator-function-distance -p 2 Inverted/*.txt > D_indicator_function_2_inverted.txt
#
#~/Projects/Aleph/build/tools/persistence-indicator-function-distance -p 3 Normal/*.txt   > D_indicator_function_3.txt
#~/Projects/Aleph/build/tools/persistence-indicator-function-distance -p 3 Inverted/*.txt > D_indicator_function_3_inverted.txt

#~/Projects/Aleph/build/tools/persistence-indicator-function-distance --wasserstein -p 1 Normal/*.txt   > D_Wasserstein_1.txt
#~/Projects/Aleph/build/tools/persistence-indicator-function-distance --wasserstein -p 1 Inverted/*.txt > D_Wasserstein_1_inverted.txt
#
#~/Projects/Aleph/build/tools/persistence-indicator-function-distance --wasserstein -p 2 Normal/*.txt   > D_Wasserstein_2.txt
#~/Projects/Aleph/build/tools/persistence-indicator-function-distance --wasserstein -p 2 Inverted/*.txt > D_Wasserstein_2_inverted.txt
~/Projects/Aleph/build/tools/persistence-indicator-function-distance --wasserstein -p 3 Normal/*.txt   > D_Wasserstein_3.txt
~/Projects/Aleph/build/tools/persistence-indicator-function-distance --wasserstein -p 3 Inverted/*.txt > D_Wasserstein_3_inverted.txt
