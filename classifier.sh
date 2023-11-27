##### Train the probes that are used in all experiments ########
python create_dataset.py --csv-file  data/mixed_treebank-train.csv --bert-name bert-base-uncased
python create_index.py --dataset mixed_treebank-train_bert-base-uncased --roles A O --balance
python train_classifiers.py --dataset mixed_treebank-train_bert-base-uncased --index-name index_balance_roles-AO --classifier-type mlp
