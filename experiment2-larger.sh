python create_dataset.py --csv-file  data/argument-swapped-original.csv --bert-name bert-large-uncased
python create_index.py --dataset argument-swapped-original_bert-large-uncased
python eval_classifiers.py --train-dataset mixed_treebank-train_bert-large-uncased --train-index index_balance_roles-AO --classifier-type mlp --eval-dataset argument-swapped-original_bert-large-uncased --eval-index index

python create_dataset.py --csv-file  data/argument-swapped-swapped.csv --bert-name bert-large-uncased
python create_index.py --dataset argument-swapped-swapped_bert-large-uncased
python eval_classifiers.py --train-dataset mixed_treebank-train_bert-large-uncased --train-index index_balance_roles-AO --classifier-type mlp --eval-dataset argument-swapped-swapped_bert-large-uncased --eval-index index
