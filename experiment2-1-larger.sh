##### Experiment 2.1 (local shuffling) ####
python create_dataset.py --ud-path ~/except-when-it-matters/val_ewt/en_ewt-ud-train.conllu --bert-name bert-large-uncased --local-shuffle 3
python create_index.py --dataset en_ewt-ud-train_bert-large-uncased_localshuffle3
python eval_classifiers.py --train-dataset mixed_treebank-train_bert-large-uncased --train-index index_balance_roles-AO --classifier-type mlp --eval-dataset en_ewt-ud-train_bert-large-uncased_localshuffle3 --eval-index index
