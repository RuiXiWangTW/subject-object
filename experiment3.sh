python create_dataset.py --ud-path ~/except-when-it-matters/training_set/mixed_treebank-train.conllu --bert-name bert-large-uncased
python create_index.py --dataset mixed_treebank-train_bert-large-uncased --roles A O --balance
python train_classifiers.py --dataset mixed_treebank-train_bert-large-uncased --index-name index_balance_roles-AO --classifier-type mlp

python create_dataset.py --csv-file  data/argument-swapped-original.csv --bert-name bert-large-uncased
python create_index.py --dataset argument-swapped-original_bert-large-uncased
python eval_classifiers.py --train-dataset mixed_treebank-train_bert-large-uncased --train-index index_balance_roles-AO --classifier-type mlp --eval-dataset argument-swapped-original_bert-large-uncased --eval-index index

python create_dataset.py --csv-file  data/argument-swapped-swapped.csv --bert-name bert-large-uncased
python create_index.py --dataset argument-swapped-swapped_bert-large-uncased
python eval_classifiers.py --train-dataset mixed_treebank-train_bert-large-uncased --train-index index_balance_roles-AO --classifier-type mlp --eval-dataset argument-swapped-swapped_bert-large-uncased --eval-index index

python create_dataset.py --ud-path ~/except-when-it-matters/val_ewt/en_ewt-ud-train.conllu --bert-name bert-large-uncased --local-shuffle 3
python create_index.py --dataset en_ewt-ud-train_bert-large-uncased_localshuffle3
python eval_classifiers.py --train-dataset mixed_treebank-train_bert-large-uncased --train-index index_balance_roles-AO --classifier-type mlp --eval-dataset en_ewt-ud-train_bert-large-uncased_localshuffle3 --eval-index index

python create_dataset.py --csv-file  data/object-subject-original.csv --bert-name bert-large-uncased
python create_index.py --dataset object-subject-original_bert-large-uncased
python eval_classifiers.py --train-dataset mixed_treebank-train_bert-large-uncased --train-index index_balance_roles-AO --classifier-type mlp --eval-dataset object-subject-original_bert-large-uncased --eval-index index

python create_dataset.py --csv-file  data/object-subject-switched.csv --bert-name bert-large-uncased
python create_index.py --dataset object-subject-switched_bert-large-uncased
python eval_classifiers.py --train-dataset mixed_treebank-train_bert-large-uncased --train-index index_balance_roles-AO --classifier-type mlp --eval-dataset object-subject-switched_bert-large-uncased --eval-index index
