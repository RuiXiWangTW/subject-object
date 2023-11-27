python create_dataset.py --csv-file  data/argument-swapped-original.csv --bert-name bert-base-uncased
python create_index.py --dataset argument-swapped-original_bert-base-uncased
python eval_classifiers.py --train-dataset mixed_treebank-train_bert-base-uncased --train-index index_balance_roles-AO --classifier-type mlp --eval-dataset argument-swapped-original_bert-base-uncased --eval-index index

python create_dataset.py --csv-file  data/argument-swapped-swapped.csv --bert-name bert-base-uncased
python create_index.py --dataset argument-swapped-swapped_bert-base-uncased
python eval_classifiers.py --train-dataset mixed_treebank-train_bert-base-uncased --train-index index_balance_roles-AO --classifier-type mlp --eval-dataset argument-swapped-swapped_bert-base-uncased --eval-index index
