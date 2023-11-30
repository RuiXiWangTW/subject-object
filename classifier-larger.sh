python create_dataset.py --ud-path ~/except-when-it-matters/training_set/mixed_treebank-train.conllu --bert-name bert-large-uncased
python create_index.py --dataset mixed_treebank-train_bert-large-uncased --roles A O --balance
python train_classifiers.py --dataset mixed_treebank-train_bert-large-uncased --index-name index_balance_roles-AO --classifier-type mlp
