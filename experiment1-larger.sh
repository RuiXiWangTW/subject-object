##### Experiment 1 #####
python create_dataset.py --ud-path ~/except-when-it-matters/val_ewt/en_ewt-ud-train.conllu --bert-name bert-large-uncased
python create_index.py --dataset en_ewt-ud-train_bert-large-uncased
python eval_classifiers.py --train-dataset mixed_treebank-train_bert-large-uncased --train-index index_balance_roles-AO --classifier-type mlp --eval-dataset en_ewt-ud-train_bert-large-uncased --eval-index index
