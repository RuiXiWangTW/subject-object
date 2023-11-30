python create_dataset.py --csv-file  data/object-subject-original.csv --bert-name bert-large-uncased
python create_index.py --dataset object-subject-original_bert-large-uncased
python eval_classifiers.py --train-dataset mixed_treebank-train_bert-large-uncased --train-index index_balance_roles-AO --classifier-type mlp --eval-dataset object-subject-original_bert-large-uncased --eval-index index

python create_dataset.py --csv-file  data/object-subject-switched.csv --bert-name bert-large-uncased
python create_index.py --dataset object-subject-switched_bert-large-uncased
python eval_classifiers.py --train-dataset mixed_treebank-train_bert-large-uncased --train-index index_balance_roles-AO --classifier-type mlp --eval-dataset object-subject-switched_bert-large-uncased --eval-index index
